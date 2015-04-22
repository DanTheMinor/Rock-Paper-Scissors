require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe('rps path', {:type => :feature}) do
  it('Returns who won in rock paper scissors') do
    #visit('/')
    #fill_in('player1', :with => 'paper')
    #click_button('Send')
    #visit('/next')
    #fill_in('player2', :with => 'rock')
    #click_button('Send')
    #click_button('Send')
    #expect(page).to have_content()
    visit('/')

    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content(1)
  end
end
