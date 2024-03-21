
Feature: print hello world feature

Scenario: Hello World scenario

	* print 'hello world'
	
	* print 'Nish Karate Automation Lab'

Scenario: Declare and Print variables

	* def balance = 200
	* def fee = 20
	* def tax = 10
	* print 'total amount -> ' + (balance + fee + tax)


Scenario: Calculator Scenario

	* def a = 200
	* def b = 20
	* print 'multiply -> ' + (a * b)
		
		
		