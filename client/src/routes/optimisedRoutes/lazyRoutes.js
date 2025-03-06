// LazyRoutes.js
import React, { lazy, Suspense } from 'react';

// Lazy load components
const ClientList = lazy(() => import('../../components/UserModule/UserList'));
const CreateCustomer = lazy(() => import('../../components/UserModule/CreateUser'));
import Loader from '../../genriccomponents/loaders/RedLoader';

// Fallback component for Suspense
const Loading = () => <div><Loader /></div>; // Assuming RedLoader is an existing loader component


const ProductedClientList = () => (
  <Suspense fallback={<Loading />}>
    <ClientList />
  </Suspense>
);

const ProductedCreateCustomer = () => (
  <Suspense fallback={<Loading />}>
    <CreateCustomer />
  </Suspense>
);



export {
   ProductedClientList,
   ProductedCreateCustomer,
};