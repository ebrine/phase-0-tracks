#### Common HTTP Status Codes
* 200 - most common, represents a successful response
* Codes starting in 2 - successful responses
* Codes starting in 1 - informational messages. not common.
* Codes starting in # - redirection response. Typically the browser handles the re-routing by itself
* 4xx - error messages, error on the client-side
* 5xx - error messages, error on the server-side
* 404 Not Found - requested resource is no longer available/not found
* 403 Forbidden - access is forbidden (this is different from unauthorized)
* 500 Internal Server Error catchall
* 503 Service Unavailable - web server isn't available, likely temporarily
* 504 - Gateway Timeout

#### GET vs POST request
* A GET method requests data from a source, while a POST method submits data to be processed to a source
* POST methods are more secure because the information is not sent in the URL -- thus are used for secure transactions such as taking passwords and such
* Conversely, GET methods can be used for operations that do not change the data requested
* GET methods are mostly used for retriveing and viewing information
* POST methods are mostly used for creating and editing information

#### Bonus question: What is a cookie? How does it relate to HTTP requests?
