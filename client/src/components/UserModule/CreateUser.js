import React from 'react'
import CustomerForm from './UserForm'
export default function CreateUser() {
  return (
    <div className='m-4 '>
    <div className=''>
      <CustomerForm page={'add_customer'} />
    </div>
    </div>
  )
}
