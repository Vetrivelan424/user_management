import React, { useState, useEffect, useCallback } from 'react';
import { ListUser } from '../../services/services';
import ReactTable from '../../genriccomponents/ReactTable';
import ModalBox from '../../genriccomponents/ModalBox';
import { toast, ToastContainer } from 'react-toastify';
import Loader from '../../genriccomponents/loaders/RedLoader';

export default function ClientList() {
  const [userList, setUserList] = useState([]);
  const [filteredUsers, setFilteredUsers] = useState([]);
  const [loading, setLoading] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [isModalOpen, setIsModalOpen] = useState(false);

  // Fetch user list on component mount
  const fetchUserList = useCallback(async () => {
    setLoading(true);
    try {
      const response = await ListUser();
      console.log('response',response)
      if (response.status == '200') {
        setUserList(response.data.users);
        setFilteredUsers(response.data.users);
        // toast.success("User Data Fetched successfully");
      } else {
        toast.error("Failed to fetch user list");
      }
    } catch (error) {
      toast.error("Unable to connect to the server");
    } finally {
      setLoading(false);
    }
  }, []);

  // Initial data fetch
  useEffect(() => {
    fetchUserList();
  }, [fetchUserList]);

  // Search functionality
  const handleSearch = (event) => {
    const query = event.target.value.toLowerCase();
    setSearchQuery(query);

    const results = userList.filter(user => 
      user.firstName.toLowerCase().includes(query) ||
      user.company.department.toLowerCase().includes(query) ||
      user.address.country.toLowerCase().includes(query) ||
      user.role.toLowerCase().includes(query)
    );

    setFilteredUsers(results);
  };

// Delete user handler
const handleDeleteUser = (id) => {
  // Update local state by filtering out the user to be deleted
  const updatedUsers = userList.filter(u => u.id !== id);
  
  // Update both the full user list and filtered users
  setUserList(updatedUsers);
  setFilteredUsers(updatedUsers);

  // Show success toast
  toast.success("User deleted successfully");
};
  // Table columns configuration
  const columns = [
    {
      name: "Name",
      selector: (row) => `${row.firstName} ${row.maidenName || ''} ${row.lastName}`,
      
    },
    {
      name: "Role",
      selector: (row) => row.role,
    },
    {
      name: "Department",
      selector: (row) => row.company.department,
    },
    {
      name: "Country",
      selector: (row) => row.company.address.country,
    },
    {
      name: "Actions",
      cell: (row) => (
        <div className="btn-group" role="group">
          <button 
            className="btn btn-danger btn-sm" 
            onClick={() => handleDeleteUser(row.id)}
          >
            Delete
          </button>
        </div>
      )
    }
  ];

  return (

    <div className="admin-wrapper p-2 ">
      <ToastContainer />
      {loading&& <Loader />}
      <div className="row mb-3 d-flex justify-content-between">
        <div className="col-md-7 ms-2 mt-3">
          <p className="head-p">User Management</p>
        </div>
        <div className="col-md-4 text-end">
          <div className="input-group">
            <input 
              type="text" 
              className="form-control" 
              placeholder="Search" 
              value={searchQuery}
              onChange={handleSearch}
            />
            <div className="d-flex justify-content-between  ms-5 mt-2">
              <button 
                className="btn color-blue mx-2 height-10 " 
                onClick={() => setIsModalOpen(true)}
              >
                <i className='icon-add text-14'></i><span className='ms-2' >Add</span>
              </button>
              <button 
                className="btn color-roles height-10" 
                onClick={fetchUserList}
              >
                <i className='icon-product'></i><span className='ms-2' >Refresh</span>
              </button>
            </div>
          </div>
        </div>
      </div>

      <ReactTable 
        tableData={filteredUsers}
        tableColumn={columns}
        loading={loading}
        needPaginate={true}
        csRowsPerPage={10}
      />

      {isModalOpen && (
        <ModalBox 
          setShow={setIsModalOpen}
          handleSubmit={(newUser) => {
            setUserList(prev => [newUser, ...prev]); // Add new user at the beginning
            setFilteredUsers(prev => [newUser, ...prev]); // Update filtered list
          }}          
        />
      )}
    </div>
  );
}