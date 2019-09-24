# MyAzureWCFServiceDemo

Positive Affirmations WCF Service & Azure Cloud Services Hosting & Client “Tester" Windows Form Application 

Project Blog Article here: 
https://portfolio.katiegirl.net/2019/09/24/positive-affirmations-wcf-service-azure-cloud-services-hosting-client-tester-windows-form-application/


About

This project presents a simple WCF Positive Affirmations Service that demos architectural styles of setting up, hosting via Azure Cloud Services, configuring services, and testing the service for http protocols. The service accepts a simple string, which represents a name, and returns a simple string with a randomized positive affirmation that acknowledges the name.  Instead of using IIS Express, the simple service is hosted using Azure Cloud Services. The Visual Studio solution also has one client “tester” Windows Form application that tests the http protocol connection to the hosted service.


Architecture


The demo project consists of these component topics:


•	PositiveAffirmationsWCFServiceWebRole Class Library for Cloud Service
	o	IPositiveAffirmationService (Interface for Service)
	o	PositiveAffirmationService (Code that Implements the Service Interface)


•	MyAzureWCFServiceDemo “Service Host” Azure Cloud Service 
	o	Configuration Settings for Hosting the Service
	o	Cloud Publishing Settings


•	TestClientGUI “Tester to Service” Windows Form Application
	o	Connected Service “Proxy Reference” 
	o	Simple Program to test the service @ http endpoint



