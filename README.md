# README

Rails API only using JWT authentication!!!!

# Using Ruby 2.7.0 and Rails 6

# Steps after clone this project:
- Bundle install
- rails secret to generate a key to jwt
- create a file called env.yml on config directory and add jwt secret key (Look at config/env.yml/example)
- rails s

# Routes:
  ```
  POST /sign_up
  "users": {
    "email": "your@email.com"
    "password": "yourPassword"
  }
  ```
  
  ```
  POST /login
  "users": {
    "email": "your@email.com"
    "password": "yourPassword"
  }
  ```
  Responses from login and sign_up will have the Authorization header with the bearer token to use as authentication for routes
  
  # Protected Routes:
    DELETE /logout
    GET /test
 
 
