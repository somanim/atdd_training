class HomePage
  include PageObject
  page_url 'https://amazon.com'

  text_field(:search_field, id:'twotabsearchtextbox')
  button(:search, value: 'Go')
  div (results: id: )

end