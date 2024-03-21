
Feature: Create user using POST API

Background:
	* url 'https://gorest.co.in'
	* def requestPayload = 
	"""
	{
    "name": "Nish B from Karate",
    "email": "nishb1234@karate.prac",
    "gender": "male",
    "status": "active"
	}
	
	"""

Scenario: Create a user with the given data

Given path '/public/v1/users' 
And request requestPayload
And header Authorization = 'Bearer ' + tokenID
When method post
Then status 201
And match $.data.id == '#present'
And match $.data.name == '#present'
And match $.data.name == 'Nish B from Karate'
And match $.data.email == 'nishb1234@karate.prac'



