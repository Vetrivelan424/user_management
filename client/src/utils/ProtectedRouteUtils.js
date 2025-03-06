import React from 'react';
import { useSelector } from 'react-redux';

const PrivateRoute = ({ children, roles }) => {
  const { user, token, status } = useSelector((state) => state.auth);
  

  return <>{children}</>;
};

export default PrivateRoute;
