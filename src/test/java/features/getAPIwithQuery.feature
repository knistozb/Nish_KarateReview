
Feature: GET API with Query Parameters

Scenario: Get all active users

#	* def query = {status : 'active', gender : 'male'}
	* def query = {status : 'active', gender : 'female', id : 6798509}
	

Given url baseUrl + '/public/v1/users'
And params query
When method GET
Then status 200
	* print response


Scenario: Get all active users and get the count

	* def query = {status : 'active'}

Given url baseUrl + '/public/v1/users'
And params query
When method GET
Then status 200
	* def jsonResponse = response
	* print jsonResponse
	* def userCount = jsonResponse.data.length 
	* print userCount
	* match userCount == 10