# Authorization Micro Service

To run this service in your local, clone the repository and open any IDE like `Eclipse,VS Code,IntelliJ,etc..` and run `mvn clean install` in the terminal and after successful completion run the application as `Spring Boot App`.

This service provides a JWT token on Authentication, which is then required for any further authorization

sample JWT :- `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Illhc2giLCJpYXQiOjE1MTYyMzkwMjJ9.IZLGHZuwrNrsAjmcwA2DEPchQnnr0nQgS5T_PFkXi_c`

The token has a validity of 30 min, post which the user is not authorized to access any of the services.

## Resources

You need to have Postman, lombook.jar installed

To make a health check on this service, hit @GET `http://localhost:8100/auth/manage/health`

To generate an access token, hit @POST`http://localhost:8100/auth/api/v1/authenticateuser`

Pass valid credentials as below in the body section in a JSON format

    {
        "userName": "admin",
        "password": "admin"
    }

The response will have a JWT token and validity as below.

To check the authorization of an User, hit @POST`http://localhost:8100/auth/api/v1/authorizeuser` and include the Authrization header in the Headers Section as below.

`Authorization :- Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTY2MTMzNzk3MCwiaWF0IjoxNjYxMzM2MTcwfQ.sWL6aHruCUHUwWollCxiGXtMYcDogsL3AifI13pum4AqW3w0_vCcy7CsxZvP9jeQWRF4j8__DSSe6i3SidVXug`

The response for a valid user is as below

    {
        "valid": true
    }

There is an in memeory `H2` data base used in this micro service which can be accessed at [H2 Console](http://localhost:8100/auth/h2). It has the available user details for this service.

To see the list of users, open the above link and enter the following details

1. JDBC URL : `jdbc:h2:mem:testdb`
2. User Name : `sa`

and hit connect. An UI of H2 Console is displayed

Now run the following query in the statements and hit `Run`

`SELECT * FROM USERS;`

The list of users is displayed.

Kudos, you just did Authentication and Authorization

The Front end for this service is as below

1)[Pension Management Portal](https://github.com/PrakashYashwanth/pension-management-portal)
