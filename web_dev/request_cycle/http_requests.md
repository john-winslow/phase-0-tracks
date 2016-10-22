
1.  What are some common HTTP status codes?

	200: OK
	300: Multiple Choices
	301: Moved Permanently
	302: Found
	304: Not Modified
	307: Temporary Redirect
	400: Bad Request
	401: Unauthorized
	403: Forbidden
	404: Not Found
	410: Gone
	500: Internal Server Error
	501: Not Implemented
	503: Service Unavailable
	550: Permission denied



2.  What is the difference between a GET request and a POST request?  When might each be used?

	GET requests data from a specified resource, while POST submits data to be processed to a specified resource.

	GET should not be used for operations that cause side-effects or taking action in web applications, while POST creates a new resource or updates an existing resource.



3.  What is a cookie?  How does it relate to HTTP requests?

	Cookies are small pieces of data containing stateful information (information that remains updated even after visiting other pages, such as a shopping cart).  They can also be used to remember arbitrary pieces of informatino such as browser history, user logins, and authentications, etc.