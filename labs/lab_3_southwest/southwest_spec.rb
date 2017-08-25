require 'watir'

describe 'return date' do

  it 'one way trip should disable the return date'do
    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.southwest.com')
    browser.radio(:id => 'trip-type-one-way').set
    return_date=browser.text_field(:id => 'air-date-return')
    expect(return_date.disabled?).to be true
browser.close
  end
end

 describe 'senior eligibility' do

   it 'when points is selected senior should be disable' do
     browser = Watir::Browser.new(:chrome)
     browser.goto('https://www.southwest.com')
     browser.radio(:id => 'price-type-points').set
     seniors=browser.text_field(:id => 'air-pax-count-seniors')
     expect(seniors.disabled?).to be true
   browser.close
   end
 end
describe 'senior eligibility' do

  it 'when points is selected senior should be disable' do
    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.southwest.com')
    browser.radio(:id => 'price-type-points').set
    seniors=browser.text_field(:id => 'air-pax-count-seniors')
    # expect(seniors.disabled?).to be true
    expect(browser.text_field(:id => 'air-pax-count-seniors').disabled?).to be true
    browser.close
  end
end

describe 'promo code invalid' do

  it 'invalid promo code error' do
    browser = Watir::Browser.new(:chrome)
    browser.goto('https://www.southwest.com')
    browser.text_field(:id => 'air-city-departure').set('DEN')
    browser.text_field(:id => 'air-city-arrival').set('CMH')
    browser.text_field(:id => 'air-date-departure').set('09/01')
    browser.text_field(:id => 'air-date-return').set('09/10')
    browser.text_field(:id => 'air-promo-code').set('ABC')
    browser.button(:id => 'jb-booking-form-submit-button').click
    promo_code_error=browser.ul(:id => 'errors').li.text
    expect(promo_code_error).to eq 'The promotion code entered was not recognized.'
  end
end


