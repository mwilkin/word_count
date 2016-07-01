require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('home page word frequency count', {:type => :feature}) do
  it('will process the user entry of a word and string and will determine the number of times the word occurs in the string') do
    visit('/')
    fill_in('word', :with => "dog")
    fill_in('string', :with => "My dog likes food.")
    click_button('Evaluate')
    expect(page).to have_content("1")
  end
end



# it('will process the user entry of a word and string and will determine the number of times the word occurs in the string') do
#   visit('/')
#   fill_in('word', :with => "dog")
#   fill_in('string', :with => "My cat likes to sleep all day.")
#   click_button('Evaluate')
#   expect(page).to have_content("0")
# end
