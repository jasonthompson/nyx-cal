require 'feature_helper'
require_relative '../../app/models/CalendarMonth'

describe 'calendar for the current month' do
  before :each do
    month = "March"
    year = "2014"
    CalendarMonth.build(month, year)
  end

  it 'displays calendar for current month' do
    visit '/calendar/month/current'
    expect(page).to have_content "March"
  end
end
