import React, { useRef, useState } from 'react';
import { Outlet } from 'react-router-dom';
import Avivo from '../assets/Images/logos/aviv0_logo.png'
const UserLayout = (props) => {
  const topDiv = useRef()
  const [show, setShow] = useState(false)

  // Example of how to use these values in an API request header

  return (
    <div className='main-panels'>
      <div className='d-flex'>
        <div className='user-panel-top d-flex justify-content-between'>
          <div>
          </div>
          <div className=''>
            
            <img className={'show-container slide-in-left'} src={Avivo } alt="Logo" />
            {/* <span className='head-tittle'>Users <span className='red-color'>Central</span> </span> */}

         <div>
           
         </div>
          </div>
          <div className="d-flex align-items-center justify-content-end height100" >
            <div id="menu" className={`btn-reset menu-toggle-container ${show ? 'menu-toggle' : 'menu-transition'}`} onClick={(e) => {
              e.preventDefault();
              setShow(show ? false : true);
            }}>
            </div>
          
          </div>
        </div>
        
        <main className={`main-inside-container ${show ? 'main-inside-container-toggle' : ''}`} ref={topDiv}>
          <Outlet />
        </main>
      </div>
    
    </div>
  );
};

export default UserLayout;
