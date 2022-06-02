require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    
    visit root_url
  
    r = assert_selector "h1", text: "Awesome"
    puts "- root h1 correct".green if r

    r = assert_selector ".card-product", count: Product.count
    puts "- root card count correct".green if r
  end
end
