class DemoSearchPage < SitePrism::Page

  set_url "/search/"
  set_url_matcher /demo.schoolrunner.org\/?/

  element :existing_filters_heading,  :xpath,   '//h3[.="Existing Filters"]'  #xpath allows us to specify the text in the element
  element :existing_filters_link,     :css,     '#ui-accordion-2-header-0'
  element :existing_filters_panel,     :css,     '#ui-accordion-2-panel-0'
  
end