require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count', {:type => :feature}) do
  it('will process the user entry of a word and string and will determine the number of times the word occurs in the string') do
    visit('/')
    fill_in('word', :with => "dog")
    fill_in('string', :with => "My dog likes to go to the dog park and play with the other dogs.")
    click_button('Evaluate')
    expect(page).to have_content("occurances: 3")
  end
  it('takes a word and string and determines the number of times the word occurs in the string with no occurances') do
    visit('/')
    fill_in('word', :with => "dog")
    fill_in('string', :with => "My cat likes to sleep all day.")
    click_button('Evaluate')
    expect(page).to have_content("occurances: 0")
  end
end
