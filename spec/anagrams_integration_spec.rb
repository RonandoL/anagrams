require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Anagrams path', {:type=>:feature}) do
  it('will provide correct number of quarters, dimes, nickles and pennies') do
    visit('/')
    fill_in('words', :with => "The lazy dog is fred")
    fill_in('check_word', :with => "god")
    click_button('Go Baby!')
    expect(page).to have_content(true)
  end
end
