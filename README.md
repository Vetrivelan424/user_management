# User Management Web Application

## Overview

This project is a full-stack web application that allows users to manage users data. Users can perform CRUD (Create, Read, Delete) operations on users records through a user-friendly interface. The application is built with React.js for the frontend, Node.js for the backend, and a SQL database for data persistence.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [DB structure](#DB-structure)
- [Demo Video](#Demo-Video)


## Features

### Frontend

- [Home Page](): Displays a list of employees with their name, position, department, and options to edit or delete records.

- [Add Users Page](): A form to add new employees with fields for name, age, position, and department.

- [Form Validation](): Ensures no empty fields and validates age as a number.

- [Navigation](): Uses React Router for seamless page transitions.

- [API Integration](): Uses Axios or Fetch API for communication with the backend.

- [Styling](): Designed for an intuitive and visually appealing user experience.


## Technologies Used

- Frontend: React, Axios,Bootsrab
- Backend: Node.js, Express, MYSQL
- Error Management: Winston

## Project Structure
```bash

├── client/
│ ├── public/
│ │ └── index.html
│ ├── src/
│ │ ├── assets/
│ │ ├── axios/
│ │ ├── config/
│ │ ├── genriccomponents/
│ │ ├── helper/
│ │ ├── hooks/
│ │ ├── layout/
│ │ ├── reduxtoolbox/
│ │ ├── routes/
│ │ ├── servises/
│ │ ├── utils/
│ │ ├── components/
│ │ │ └── UserModule
│ │ │   ├──CreateUser.js
│ │ │   ├──UserForm.js
│ │ │   └──UsersList.js
│ │ ├── App.js
│ │ └── index.js
| ├── webpack/
│ │ ├── webpack.common.js
│ │ ├── webpack.dev.js
│ │ ├── webpack.prod.js
│ │ └── webpack.config.js
│ ├── node_modules/
│ ├── package.json
│ ├── package-lock.json
│ └── README.md
├── dataPusher.db
└── README.md
```

### Server

## Overview
This project provides a **User Authentication Service** using Node.js, Express, and MySQL. It includes user management functionalities such as listing users, authentication, and database interactions.

## Features
- List users
- Secure API endpoints
- MySQL database integration
- Error handling and logging

## Technologies Used
- **Node.js** - Backend runtime
- **Express.js** - Web framework
- **MySQL** - Relational database
- **Knex.js** - Query builder for MySQL
- **Winston** - Logging

## Project Structure
```
├── server/
│ ├── src
| |  ├── config/
│ |  │ └── config.js
| |  ├── routes/
│ |  │ └── index.js
│ |  ├── models/
│ |  │ └── users.model.js=
| |  ├── controllers/
| |  | └── users.controller.js
| |  ├── db/
| |  | └── db-knex-connection.js
| |  ├── helper/
| |  ├── middleware/
| |  └── utils/
│ ├── server.js
| ├── .env
│ ├── package.json
│ └── package-lock.json

```

## Installation
### Prerequisites
Ensure you have the following installed:
- Node.js (v16 or later)
- MySQL Database

### Steps to Set Up
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/user-auth-service.git
   cd user-auth-service
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Configure the database:
   - Create a MySQL database.
   - Update the `.env` file with your database credentials:
     ```env
     DB_HOST=localhost
     DB_USER=root
     DB_PASSWORD=yourpassword
     DB_NAME=user_db
     ```

4. Run database migrations:
   ```bash
   npx knex migrate:latest
   ```

5. Start the server:
   ```bash
   npm start
   ```

## API Endpoints
**Base URL:** `http://localhost:3000/api/v1`

| Method | Endpoint                 | Description      |
|--------|--------------------------|------------------|
| GET    | /list_users              | Get all users   |

## Logging
Logs are saved using **Winston**. Errors are logged in the `logs` folder.

### DB Structure
The database structure file is uploaded in this directory: "users_central.sql".

### Demo VideoThe project demo file is uploaded in this directory: "users_demo.mp4".

This `README.md` file provides a comprehensive overview of the project, including features, technologies used, project structure, installation instructions, how to run the application.

## License
This project is licensed under the **MIT License**.

## Contributing
Pull requests are welcome. Open an issue for feature requests or bug reports.

## Contact
For queries, reach out to **your-email@example.com**.

#### Contributors
Vetrivelan

 

