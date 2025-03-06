/***************************************************************************************
 * @module       Service 
 * @name         employee-Service
 * @description  Get the User Authentication Service 
 * @version      1.0.0
 * @copyright    © 2024 AVIVO
 * @license      Licensed under the MIT License
 * @createdon    May 2024
 * @modifiedon   May 2024
 * @since        1.0
 ***************************************************************************************/
  
/**
 * Function to register a user via Axios HTTP POST request.
 * @name registerUser
 * @param {object} userData - The user data to be registered.
 * @returns {Promise<object>} - A Promise that resolves with the response data (e.g., success message, user object).
 * @throws {Error} - If an error occurs during the registration process.
 * @version 1.0.0
 */

import  Http  from '../axois/useAxois'; 

export const ListUser = async (userData = '') => {
  try {
    const response = await Http.get('https://dummyjson.com/users',userData);
    return response;
} catch (error) {
    throw error;
  }
};

