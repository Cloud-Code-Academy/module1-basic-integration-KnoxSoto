public class JSONPlaceholderExercise {
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';
    
    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to fetch
     * @return String - The JSON response from the API
     */
    public static String getPostById(Integer postId) {
      // TODO: Student Implementation
    
        // 1. Create a new HTTP request
         // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'GET'
        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL + '/posts/' + postId);
        request.setMethod('GET');

       // 4. Send the request and get the response
       Http http = new Http();
       HttpResponse response = http.send(request);
       // 5. Return the response body as string
       System.debug(response.getBody());
       if(response.getStatusCode() == 200){
           return response.getBody();
       }
       return null;
   }
    
  
    /**
     * Exercise 2: Implement a POST request to create a new post
     * Endpoint: /posts
     * @param title - The title of the post
     * @param body - The body content of the post
     * @param userId - The user ID creating the post
     * @return String - The JSON response from the API
     */
    public static String createPost(String title, String body, Integer userId) {
       
        HttpRequest request = new HttpRequest();
        
        
        request.setEndpoint(BASE_URL + '/posts');
        
        
        request.setMethod('POST');
        
     
        Map<String, Object> postData = new Map<String, Object>{
            'title' => title,
            'body' => body,
            'userId' => userId
        };
        
        
        String jsonBody = JSON.serialize(postData);
        
        
        request.setHeader('Content-Type', 'application/json');
        request.setBody(jsonBody);
        
        try {
            
            Http http = new Http();
            HttpResponse response = http.send(request);
            
            
            if(response.getStatusCode() == 201) {
                System.debug('Post created successfully: ' + response.getBody());
                return response.getBody();
            } else {
                System.debug('Error creating post. Status: ' + response.getStatusCode());
                return 'Error: ' + response.getStatus() + ' - ' + response.getBody();
            }
        } catch(Exception e) {
            System.debug('Exception occurred: ' + e.getMessage());
            return 'Error: ' + e.getMessage();
        }
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to update
     * @param title - The new title
     * @param body - The new body content
     * @param userId - The user ID
     * @return String - The JSON response from the API
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
         // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PUT'
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL+ '/posts');
        req.setMethod('PUT');
        req.setHeader('Content-Type', 'application/json');
        

        Http http = new Http();
       HttpResponse response = http.send(req);
       
       if(response.getStatusCode() == 201){
         return response.getBody();
       } else{
        return null;
       }
        // 4. Create a JSON string with the updated post data
        
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to patch
     * @param title - The new title (can be null)
     * @return String - The JSON response from the API
     */
    public static String patchPostTitle(Integer postId, String title) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PATCH'
        // 4. Create a JSON string with only the title
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        return null;
    }
    
    /**
     * Exercise 5: Implement a DELETE request to remove a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to delete
     * @return Integer - The HTTP status code from the response
     */
    public static Integer deletePost(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'DELETE'
        // 4. Send the request and get the response
        // 5. Return the response status code
        return null;
    }
} 