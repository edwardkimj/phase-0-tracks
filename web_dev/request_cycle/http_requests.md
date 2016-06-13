# How the Web Works

1. What are some common HTTP status codes?
  * Some common HTTP status codes are:
    200 OK Status Code - meaning the request has succeeded. The information returned with
    the response is dependent on the method used in the request.

    300 Multiple Choices - The requested resource has different choices and cannot be resolved into one.

    400 Bad Request - The request could not be understood by the server due to malformed syntax. The client should not repeat the request without modifications.

    500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request.

  * These are just some common examples of HTTP status codes and there are many more that can be divulged into.


2. What is the difference between a GET request and a POST request? When might each be used?
  * A GET request initially requests data from a specified resource and can do a list of requests:
    * GET requests can be cached
    * GET requests remain in the browser history
    * GET requests can be bookmarked
    * GET requests should never be used when dealing with sensitive Data
    * GET requests have length restrictions and should be used only to retreive Data
  * A POST request initially submits data to be processed to a specified resource
    * POST requests are never cached
    * POST requests do not remain in the browser history
    * POST requests cannot be bookmarked
    * POST requests have no restrictions on data length

3. Optional bonus question: What is a cookie? How does it relate to HTTP requests?
  * A cookie refers to a small piece of data sent from a website and is stored in the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information or to record the user's browsing activity. They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers. 
