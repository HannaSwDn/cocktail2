Given("the following Admin exists:") do |table|
    table.hashes.each do |admin|
        FactoryBot.create(:admin, admin)
    end
end

Given("I am logged in as Admin") do
    visit new_admin_session_path
    fill_in 'admin[email]', with: 'admin@mail.com'
    fill_in 'admin[password]', with: 'password'
    find('#login').click
end

Given("I visit the menu page") do
    visit menu_index_path
end

Given("I click on {string}") do |string|
    click_on string
end

Given("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end

Given("show me the page") do
    save_and_open_page
end
