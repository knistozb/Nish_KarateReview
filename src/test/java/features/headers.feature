
Feature: GET API headers feature

Scenario: Pass the user request with headers

Given header Content-Type = 'text/xml;charset=ISO-8859-1'
And header Accept-Encoding = 'gzip, deflate, br'
And header Connection = 'keep-alive'
And header Expect = '100-continue'
And header User-Agent = 'PostmanRuntime/7.37.0'
# And header Authorization = 'abcfalkgh123e2rfncjvhilfkhvni2323rebfj4rh4r'


When url baseUrl + '/public/v1/users'
And path '6798509'
When method GET
Then status 200
	* print response


Scenario: Pass the user request with headers part 2

	* def request_headers = {Content-Type : 'text/xml;charset=ISO-8859-1', Accept-Encoding : 'gzip, deflate, br', Connection : 'keep-alive', Expect : '100-continue', User-Agent : 'PostmanRuntime/7.37.0'}
	
Given headers request_headers	
When url baseUrl + '/public/v1/users'
And path '6798509'
When method GET
Then status 200
	* print response
	
	
	Scenario: Pass the user request with headers part 3

	* configure headers = {Content-Type : 'text/xml;charset=ISO-8859-1', Accept-Encoding : 'gzip, deflate, br', Connection : 'keep-alive', Expect : '100-continue', User-Agent : 'PostmanRuntime/7.37.0'}
	
When url baseUrl + '/public/v1/users'
And path '6798509'
When method GET
Then status 200
	* print response
	
	
	
	
	
	
	
	

