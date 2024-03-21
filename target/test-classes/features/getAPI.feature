
Feature: Get API feature

Scenario: Get user details

Given url baseUrl + '/public/v1/users'
# Given url 'https://gorest.co.in/public/v1/users'
And path '6798509'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.data.name
* print actName
* match actName == 'Kalyani Achari'

* def actId = jsonResponse.data.id
* def actEmail = jsonResponse.data.email
* match actId == 6798509
* match actEmail == 'achari_kalyani@douglas.test'



Scenario: Get user details - user not found

Given url baseUrl + '/public/v1/users'
And path '1'
When method GET
Then status 404
* print response







