require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
      # it "should have the title 'Home'" do
        # visit '/static_pages/home'
       # # page.should have_selector('title', :text => "#{:base_title} | Home")
       # page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    # end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  
  describe "Help page" do
    it "should have h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
       # page.should have_selector('title', :text => "#{:base_title} | Help")
       page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end
  
  describe "About page" do
    it "should have h1 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
    it "should have the title 'About us'" do
      visit '/static_pages/about'
       # page.should have_selector('title', :text => "#{:base_title}  | About us")
       page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About us")
    end
  end
  
  describe "Contacts page" do
    it "should have h1 'Contacts'" do
      visit '/static_pages/contacts'
      page.should have_selector('h1', :text => 'Contacts')
    end
    it "should have anchor 'Email me'" do
      visit '/static_pages/contacts'
      page.should have_selector('a', :text => 'Email me')
    end
    it "should have the title 'Contacts'" do
      visit '/static_pages/contacts'
       # page.should have_selector('title', :text => "#{:base_title} | Contacts")
       page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contacts")
    end
  end
end