require('capybara/rpec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count path', {:type => :feature}) do
  it('takes a word and string and determines the number of times the word occurs in the string') do
    visit('/word_count')
    fill_in('input_word', :with => "dog")
    fill_in('input_string', with => "My dog likes to go to the dog park and play with the other dogs.")
    click_button('Evaluate')
    expect(page).to have_content("occurances: 3")
  end
end
