import React from "react";
import router from './routes/mainRoutes';
import { RouterProvider } from 'react-router-dom';
import './assets/Animations/animations.css';
import './assets/icons/style.css';
import ToastNotification from "./genriccomponents/ToastNotification";
import ErrorBoundary from "./genriccomponents/errorBoundary";

function App() {

  return (
    <>
      <ErrorBoundary>
        <RouterProvider router={router} />
        <ToastNotification />
      </ErrorBoundary>
    </>
  );
}

export default App;
