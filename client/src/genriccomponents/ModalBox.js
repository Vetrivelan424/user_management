import React, { useState } from 'react';
import CustomerForm from '../components/UserModule/UserForm';
import 'bootstrap/dist/css/bootstrap.min.css';

function ModalBox({ setShow, handleSubmit }) {
  const [loader, setLoader] = useState(false);

  return (
    <>
      {loader ? (
        <div className="text-center">
          <div className="spinner-border" role="status">
            <span className="visually-hidden">Loading...</span>
          </div>
        </div>
      ) : (
        <div 
          className="modal show" 
          style={{ display: 'block', backgroundColor: 'rgba(0,0,0,0.5)' }}
          tabIndex="-1"
        >
          <div className="modal-dialog modal-lg">
            <div className="modal-content">
              <div className="modal-header">
                <p className="modal-title head-p">Add User</p>
                <button 
                  type="button" 
                  className="btn-close" 
                  onClick={() => setShow(false)}
                ></button>
              </div>
              <div className="modal-body">
                <CustomerForm 
                  setLoader={setLoader}
                  page="add_customer"
                  setUserList={handleSubmit}
                  setShow={setShow}
                />
              </div>
            </div>
          </div>
        </div>
      )}
    </>
  );
}

export default ModalBox;