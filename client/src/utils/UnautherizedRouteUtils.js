import React from 'react';
import { useSelector } from 'react-redux';
import { Navigate } from 'react-router-dom';

const UnAuthRoute = ({ children }) => {
  const { user, token, status } = useSelector((state) => state.auth);
 
  if (localStorage.getItem('user_access_token')) {
    return <Navigate to="/users" />;
  }else{
    return <Navigate to="/users" />;
  }
 
  return <>{children}</>;
};

export default UnAuthRoute;
