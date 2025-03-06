import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import CONFIG from '../config/config';

// const API_BASE_URL = `${CONFIG.API_URL}`;
const API_LANDING_KEY = CONFIG.REACT_APP_LANDING_AUTHORIZATION_KEY;

const httpClient = axios.create({
  baseURL: "",
  headers: {
    Accept: 'application/json',
    'Content-Type': 'application/json',
  },
});

const SessionHandler = () => {
  const [modalData, setModalData] = useState({ title: '', content: '' });
  const history = useNavigate();
  
  const handleLogoutOkay = () => {
    localStorage.removeItem("user_access_token");
    localStorage.clear();
    history('/login');
  };

  const checkSessionExpire = (data) => {
    setModalData({ title: data.head, content: data.text });
  };

  useEffect(() => {
    const interceptorRequest = httpClient.interceptors.request.use(
      (config) => {
        const token = localStorage.getItem("user_access_token");
        config.headers.Authorization = token ? `Bearer ${token}` : API_LANDING_KEY;
        return config;
      },
      (error) => Promise.reject(error)
    );

    const interceptorResponse = httpClient.interceptors.response.use(
      (response) => {
        if (response.data.session_expired === 1) {
          const data = { head: 'Session Expired', text: 'Your session has expired. Please log in again.' };
          checkSessionExpire(data);
        } else if (response.data.force_logout === 1) {
          const data = { head: 'Force Log Out', text: 'You will be logged out from this device because your account is currently active on another device. Please log in again if you wish to continue using this device.' };
          checkSessionExpire(data);
        } else {
          return response.data.edata;
        }
        return Promise.resolve(response);
      },
      (error) => {
        if (error.response && error.response.status === 401) {
          console.error('Unauthorized access, logging out');
          handleLogoutOkay()
        }
        return Promise.reject(error);
      }
    );

    return () => {
      httpClient.interceptors.request.eject(interceptorRequest);
      httpClient.interceptors.response.eject(interceptorResponse);
    };
  }, []);

  return (
    <>
    </>
  );
};

export { httpClient, SessionHandler };
