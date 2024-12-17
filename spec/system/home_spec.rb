require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it 'displays the homepage' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
