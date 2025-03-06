/***************************************************************************************
 * @module       Controller 
 * @name         userController
 * @description  Handles user-related API requests and responses.
 * @version      1.0.0
 * @copyright    © 2024 AVIVO
 * @license      Licensed under the MIT License
 * @createdon    May 2024
 * @modifiedon   March 2025
 * @since        1.0
 ***************************************************************************************/


const userModal = require('../models/user.model');
/**
 * This class describes a file get.
 *
 * @class      FileGet (name)
 */
class userController {
  
 /**
 * Handles the HTTP request to fetch user data.
 *
 * @param      {Object} req - The request object.
 * @param      {Object} res - The response object.
 * @param      {Function} next - The next middleware function.
 */

  list_users = async (req, res, next) => {
    var user = await userModal.list_users(req);
    res.status(200).send(
      {
        'valid': true,
        'message': 'User data fetched successfully',
        'user': user
      });

  };


}

module.exports = new userController;