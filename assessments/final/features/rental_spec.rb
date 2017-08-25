require 'watir'

describe 'weekend rate' do

  it 'View Rental Rates for weekend rental' do
    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.budget.com')
    browser.text_field(:id => 'PicLoc_value').set 'DEN'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'DropLoc_value').set 'SLC'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'from').set '09/01/2017'
    browser.text_field(:id => 'to').set '09/03/2017'
    browser.button(:id => 'res-home-select-car').click
    sleep 5
    expect(browser.div(:class => 'global-rental-summary page').exists?).to be true

  end

end

describe 'view vehicle mpg' do

  it 'viewing vehicle mpg' do

    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.budget.com')
    browser.text_field(:id => 'PicLoc_value').set 'DEN'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'DropLoc_value').set 'SLC'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'from').set '09/01/2017'
    browser.text_field(:id => 'to').set '09/03/2017'
    browser.button(:id => 'res-home-select-car').click
    sleep 5
    browser.link(:class => 'vehicleinfo vehicle-info-anc-tag').click
    expect(browser.span(:class => 'mpg-seats-feat').exists?).to be true

  end
end

describe 'pay at counter' do

  it 'pay at counter rental rates' do

    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.budget.com')
    browser.text_field(:id => 'PicLoc_value').set 'DEN'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'DropLoc_value').set 'SLC'
    sleep 2
    browser.send_keys(:tab)
    browser.text_field(:id => 'from').set '09/01/2017'
    browser.text_field(:id => 'to').set '09/03/2017'
    browser.button(:id => 'res-home-select-car').click
    sleep 5
    payatcounter = browser.p(:class => 'payamntp').text.gsub('$',"").to_i
    paynow = browser.p(:class => 'payamntr').text.gsub('$',"").to_i
    expect(payatcounter>paynow).to be true

  end
end