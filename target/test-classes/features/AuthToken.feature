
Feature: GET API authentication feature

Scenario: Get user details using Bearer Token Auth

	* print tokenID
Given header Authorization = 'Bearer ' + tokenID
Given url baseUrl + '/public/v1/users'
And path '6798509'
When method GET
Then status 200
	* print response








