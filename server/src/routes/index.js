/***************************************************************************************
 * @module       Routes 
 * @name         userRoutes
 * @description  Defines API endpoints for user-related operations.
 * @version      1.0.0
 * @copyright    © 2024 AVIVO
 * @license      Licensed under the MIT License
 * @createdon    May 2024
 * @modifiedon   March 2025
 * @since        1.0
 ***************************************************************************************/

const express = require('express');
const router = express.Router();
const userController=require('../controllers/user.controller')
const ErrorHandling       = require('../utils/errorHandling.utils')


// ***************** LIST MANAGEMENT API **************//

router.get('/list_users', userController.list_users);

//****************** ERROR MANAGEMENT API ********************/ 
router.get('/logs/:date/:type', ErrorHandling.error_handling_method);

module.exports = router;
