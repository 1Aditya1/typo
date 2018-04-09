Feature: Categories Page
  As a blog admin
  In order to properly categorize
  I want to be able to add categories to my blog
  
  Background: 
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Action"
    And I fill in "category_keywords" with "Infinity War"
    And I fill in "category_permalink" with "Part3"
    And I fill in "category_description" with "Awesome Movie"
    And I press "Save"
    Then I should see "Action"
    And I should see "Infinity War"
    And I should see "Part3"
    And I should see "Awesome Movie"