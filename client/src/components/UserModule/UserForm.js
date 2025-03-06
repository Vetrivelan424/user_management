import React, { useState } from 'react';
import Select from 'react-select';
import { v4 as uuidv4 } from 'uuid';
function CustomerForm({ page, setUserList, setShow, setLoader }) {
  // Dropdown options for role and department
  const departmentOptions = [
    { value: 'Admin', label: 'Admin' },
    { value: 'HR', label: 'Human Resources' },
    { value: 'IT', label: 'Information Technology' },
    { value: 'Finance', label: 'Finance' },
    { value: 'Sales', label: 'Sales' }
  ];

  const roleOptions = [
    { value: 'Manager', label: 'Manager' },
    { value: 'Employee', label: 'Employee' },
    { value: 'Contractor', label: 'Contractor' }
  ];

  // Form state with more comprehensive initial state
  const [formData, setFormData] = useState({
     id :uuidv4(),
    firstName: '',
    maidenName: '',
    lastName: '',
    role: null,
    department: null,
    company: {
      name: '',
      address: {
        country: ''
      }
    }
  });

  // Form validation state
  const [errors, setErrors] = useState({});

  // Validate form before submission
  const validateForm = () => {
    const newErrors = {};
    
    if (!formData.firstName.trim()) newErrors.firstName = 'First Name is required';
    if (!formData.lastName.trim()) newErrors.lastName = 'Last Name is required';
    if (!formData.role) newErrors.role = 'Role is required';
    if (!formData.department) newErrors.department = 'Department is required';
    if (!formData.company.address.country.trim()) newErrors.country = 'Country is required';

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  // Handles input changes for text inputs
  const handleInputChange = (e) => {
    const { name, value } = e.target;
    
    // Handle nested fields
    if (name === 'country') {
      setFormData(prev => ({
        ...prev,
        company: {
          ...prev.company,
          address: {
            ...prev.company.address,
            [name]: value
          }
        }
      }));
    } else {
      setFormData(prev => ({
        ...prev,
        [name]: value
      }));
    }
  };

  // Handles select dropdown changes
  const handleSelectChange = (field) => (selectedOption) => {
    setFormData(prev => ({
      ...prev,
      [field]: selectedOption
    }));
  };

  // Handles form submission
  const handleSubmit = (e) => {
    e.preventDefault();
    
    if (validateForm()) {
      // Prepare data for submission
      const submissionData = {
        ...formData,
        role: formData.role.value,
        company:{
          address:{country:formData.company.address.country},
          department:formData.department.value,
        },
        department: formData.department.value
      };

      // Simulate loading
      setLoader(true);
      
      // Timeout to simulate API call
      setTimeout(() => {
        setUserList(submissionData);
        setLoader(false);
        setShow(false);
      }, 500);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="container-fluid">
      <div className="row mb-3">
        <div className="col-md-4">
          <label className="form-label">First Name <span className="text-danger">*</span></label>
          <input 
            type="text" 
            className={`form-control ${errors.firstName ? 'is-invalid' : ''}`}
            name="firstName"
            value={formData.firstName}
            onChange={handleInputChange}
            // placeholder="Enter first name"
          />
          {errors.firstName && (
            <div className="invalid-feedback">{errors.firstName}</div>
          )}
        </div>

        <div className="col-md-4">
          <label className="form-label">Middle Name</label>
          <input 
            type="text" 
            className="form-control"
            name="maidenName"
            value={formData.maidenName}
            onChange={handleInputChange}
            // placeholder="Enter middle name"
          />
        </div>

        <div className="col-md-4">
          <label className="form-label">Last Name <span className="text-danger">*</span></label>
          <input 
            type="text" 
            className={`form-control ${errors.lastName ? 'is-invalid' : ''}`}
            name="lastName"
            value={formData.lastName}
            onChange={handleInputChange}
            // placeholder="Enter last name"
          />
          {errors.lastName && (
            <div className="invalid-feedback">{errors.lastName}</div>
          )}
        </div>
      </div>

      <div className="row mb-3">
        <div className="col-md-4">
          <label className="form-label ">Role <span className="text-danger">*</span></label>
          <Select
            menuPosition='fixed'
            name="role"
            options={roleOptions}
            value={formData.role}
            onChange={handleSelectChange('role')}
            // placeholder="Select Role"
            className={errors.role ? 'is-invalid' : ''}
          />
          {errors.role && (
            <div className="invalid-feedback d-block">{errors.role}</div>
          )}
        </div>

        <div className="col-md-4">
          <label className="form-label ">Department <span className="text-danger">*</span></label>
          <Select
            name="department"
             menuPosition='fixed'
            options={departmentOptions}
            value={formData.department}
            onChange={handleSelectChange('department')}
            // placeholder="Select Department"
            className={errors.department ? 'is-invalid' : ''}
          />
          {errors.department && (
            <div className="invalid-feedback d-block">{errors.department}</div>
          )}
        </div>

        <div className="col-md-4 ">
          <label className="form-label ">Country <span className="text-danger">*</span></label>
          <input 
            type="text" 
            className={`form-control ${errors.country ? 'is-invalid' : ''}`}
            name="country"
            value={formData.company.address.country}
            onChange={handleInputChange}
            // placeholder="Enter country"
          />
          {errors.country && (
            <div className="invalid-feedback">{errors.country}</div>
          )}
        </div>
      </div>

      <div className="row">
        <div className="col-12">
          <button 
            type="submit" 
            className="btn color-blue w-100"
          >
            Create User
          </button>
        </div>
      </div>
    </form>
  );
}

export default CustomerForm;