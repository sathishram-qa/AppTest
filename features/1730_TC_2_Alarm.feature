#Ticket no:#1730 - Daily Regression Test of beta projects in Production Environment

Feature: Verify project and portfolio level testcases for the beta projects in production environment

Background: 
		   Given I have logged in as a admin user with Username "enfinity.admin@enfinity.admin" and password "Enfinity321"

@Testcase2
Scenario Outline: I want to verify all details in the project info page is getting displayed
          
          Given I am in project Info page of "<project>"
          And I verify "<project>" Name,Address and Description are displayed
          And I verify names of people who also have access to the project are displayed under peoples section
          And I verify forecasts if any are displayed under project forecast section
          And I verify financial rates if any are displayed under financial rates section
          And I verify the project constants are displayed under project constants section
         

Examples: Project List 
|project                    	  |                     
|Lemoore District Office          |
|Lemoore Engvall Elementary School|
|Lemoore Liberty Middle School    |
|Lemoore Meadow Elementary School |
|MJUSD Boron District Office      |
|MJUSD Boron High School          |
|MJUSD West Boron Elementary      |
