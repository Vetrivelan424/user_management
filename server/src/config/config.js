 CONFIG = {}
const BASE_PATH = process.cwd() + '/';
CONFIG.BASE_PATH = BASE_PATH
require('dotenv').config({ path: CONFIG.BASE_PATH + '.env' });

if (process.env.NODE_ENV == 'LOCAL') {
  CONFIG.NODE_ENV = process.env.NODE_ENV;
  CONFIG.PORT = process.env.PORT;
  CONFIG.DB_HOST = process.env.DB_HOST;
  CONFIG.DB_USER = process.env.DB_USER;
  CONFIG.DB_PASS = process.env.DB_PASS;
  CONFIG.DB_DATABASE = process.env.DB_DATABASE;
}
else if (process.env.NODE_ENV == 'DEV' || process.env.NODE_ENV =='development') {
  
}
else if (process.env.NODE_ENV == 'QA') {

}
else if (process.env.NODE_ENV == 'STAGING') {
  

}
else if (process.env.NODE_ENV == 'TEST') {
 
}


module.exports = CONFIG;