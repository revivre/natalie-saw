require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    
    it "should have the content 'Natalie News Checker'" do
    	  visit '/static_pages/home'
    	  expect(page).to have_content('Natalie News Checker')
    	end

    	it "should have the content 'Get the Fresh News!'" do
    	  visit '/static_pages/home'
    	  expect(page).to have_content('Get the Fresh News!')
    	end
  end

  describe "About page" do
    
    it "should have the content 'About'" do
    	  visit '/static_pages/about'
    	  expect(page).to have_content('About')
    	end
  end
end
