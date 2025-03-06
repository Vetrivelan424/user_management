/***************************************************************************************
 * @module       Model 
 * @name         userModel
 * @description  Handles database queries related to user operations.
 * @version      1.0.0
 * @copyright    © 2024 AVIVO
 * @license      Licensed under the MIT License
 * @createdon    May 2024
 * @modifiedon   March 2025
 * @since        1.0
 ***************************************************************************************/

const logger = require('../helper/winston-loggers');
const { db } = require('../db/db-knex-connection');

/**
 * This class describes an user model.
 *
 * @class      userModal (name)
 */
class userModal {
  
  /**
 * Retrieves a list of users from the database.
 *
 * @param      {Object} params - Query parameters (optional).
 * @returns    {Promise<Array>} A promise that resolves to an array of user objects.
 * @throws     {Error} Throws an error if the query fails.
 */

  list_users = async (params) => {
    try {
      let query = db('users').select('*').orderBy('id', 'desc');
      const response = await query;
      // Assuming encrypt function is defined to encrypt user id
      return response;
    } catch (err) {
      logger.error(`Error occurred: ${err}`);
      console.log(err);
      throw err; // Rethrow the error for handling at a higher level
    }

  }

}
module.exports = new userModal();
