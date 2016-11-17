require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home Page" do

    before {visit home_path}

    it {should have_content('Sample App')}
    it {should have_title('Ruby on Rails Tutorial Sample App')}

  end
  # describe "GET /static_pages" do
    # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    # end
  # end
  describe "Help page" do

    before {visit help_path}

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About page" do

    before {visit about_path}
    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end

  end

  describe "Contact page" do

    before {visit contact_path}
    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end


  end



end
