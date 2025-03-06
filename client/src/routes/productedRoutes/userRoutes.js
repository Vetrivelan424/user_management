import React from 'react';
import {
  ProductedClientList,
  ProductedCreateCustomer,
} from '../optimisedRoutes/lazyRoutes';
import UserLayout from '../../layout/UserLayout';
const userRoutes = [
  {
    element: (
        <UserLayout />
    ),
    children: [
      { path: '/', element: <ProductedClientList /> },
      { path: '/user', element: <ProductedClientList /> },
      { path: '/user/add-user', element: <ProductedCreateCustomer /> },  
    ],
  },
];

export default userRoutes;
