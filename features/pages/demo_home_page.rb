class DemoHomePage < SitePrism::Page

  set_url "/home{?asof=*}"
  set_url_matcher /demo.schoolrunner.org\/?/

  element :h1_heading,  :xpath,   '//h1[.="Home"]'  #xpath allows us to specify the text in the element
  # element :h1_heading,            'h1'            #valid css, for a page with only one 'h1' element
  
end