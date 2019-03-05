Feature: Admin can add items to menu

    As an Admin
    In order to keep my menu updated
    I would like to be able to add items to the menu

    Background:
        Given the following Admin exists:
            | email          | password |
            | admin@mail.com | password |
        
        And I am logged in as Admin
        And I visit the menu page

    Scenario: Admin can add an item to the menu
        Given I click on 'Add item'
        And I fill in 'Title' with 'Vodka'
        And I fill in 'Description' with 'Russian vodka'
        And I fill in 'Price' with '10'
        And I fill in 'Category' with 'Drink'
        And I click on 'Add item'
        Then I should see 'Vodka was added to your menu!'
        And I should see 'Vodka'
        And I should see '10$'
