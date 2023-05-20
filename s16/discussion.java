Gelyn Rabe
// [SECTION] Smoke Test Work flow

//Smoke test for posts routes 

=================
Creating a posts
=================
1. Send a POST request via postman to generate a JWT Token with the user details sent at http://localhost:8080/authenticate.
2. Send a POST request via postman to test if we an create at http://localhost:8080/post.
3. Add the JWT token in the header  of the request as "Authorization".
4. Send the data as a raw JSON format using postman.
5. Include the request body  data to be sent along with the request:
{
	"title" : "Hello World",
	"content" : " This is another post"
}
6. Click on "send" to process the postman request.
7. The API should respond with a meesage of "Post created successfully." 

====================
Retriving all posts:
=====================
1. Send a GET request via postman to test the url at http://localhost:8080/posts.
2. Click on "send" to process  the postman request.
3.The API should respond with a message  of an array which incliude all posts.

================
Updating a posts:
=================
1. Send a POST request via postman to generate a JWT Token with the user details sent at http://localhost:8080/authenticate.
2. Send a PUT request via postman to test if we can update  a specific post  at http://localhost:8080/posts/>postid>
3. Add the JWT token in the header  of the request as "Authorization".
4. Send the data as a raw JSON format using postman.
5. Include the request body  data to be sent along with the request:
{
	"title" : "Hello World",
	"content" : " This is another post"
}
6. Click on "send" to process the postman request.
7. The API should respond with a meesage of "Post created successfully." 

================
Deleting a Post.
================
1. Send a DELETE request via postman to generate a JWT Token with the user details sent at http://localhost:8080/authenticate.
2. Send a DELETE request via postman to test if we can update  a specific post  at http://localhost:8080/posts/>postid>
3. Add the JWT token in the header  of the request as "Authorization".
4. Send the data as a raw JSON format using postman.
5. Include the request body  data to be sent along with the request:
{
	"title" : "Hello World",
	"content" : " This is another post"
}
6. Click on "send" to process the postman request.
7. The API should respond with a meesage of "Post created successfully."

====================
Retriving all user's posts:
=====================
1. Send a POST request via postman to generate a JWTToken with the user details sent at http://localhost:8080/authenticate
2. Send a GET request via postman to test if we can retrieve all posts of user at http://localhost:8080/posts.
3. Click on "send" to process  the postman request.
4. Add the JWT token in the header  of the request as "Authorization".
5.The API should respond with a message  of an array which incliude all user's posts.
