require 'rails_helper'

describe 'home' do
  specify '画面の表示' do
    visit '/static_pages/home'
    expect(page).to have_css('h1', text: 'Sample App')
  end
end

describe 'help' do
  specify '画面の表示' do
    visit '/static_pages/help'
    expect(page).to have_css('h1', text: 'Help')
  end
end

describe 'about' do
  specify '画面の表示' do
    visit '/static_pages/about'
    expect(page).to have_css('h1', text: 'About')
  end
end

#require 'rails_helper'
#
#RSpec.feature "Homes", type: :request do
#
#  scenario "homeへページ遷移できるか" do
#    visit root_path
#    click_link "Home"
#
#    expect(page).to have_content("Welcome to the Sample App")
#  end
#
#  scenario "aboutへページ遷移できるか" do
#    visit root_path
#    click_link "About"
#
#    expect(page).to have_content("Help Log in About")
#  end
#
#  scenario "helpへページ遷移できるか" do
#    visit root_path
#    click_link "Help"
#
#    expect(page).to have_content("Log in Help")
#  end
#
#  scenario "contactへページ遷移できるか" do
#    visit root_path
#    click_link "Contact"
#
#    expect(page).to have_content("Help Log in Contact")
#  end
#
#  scenario "Sign upへページ遷移できるか" do
#    visit root_path
#    click_on "Sign up now!"
#
#    expect(page).to have_content("Sign up")
#  end
#end
#
##require 'rails_helper'
##
##RSpec.describe "UsersSignups", type: :request do
##  describe "GET /users_signups" do
##    it "works! (now write some real specs)" do
##      get users_signups_path
##      expect(response).to have_http_status(200)
#    end
#  end
#end
#require 'rails_helper'
#
#RSpec.describe "User pages", type: :request do
#  let(:user) { FactoryBot.create(:user) }
#
#  # new
#  describe "GET #new" do
#    # 正常なレスポンスを返すこと
#    it "returns http success" do
#      get signup_path
#      expect(response).to be_success
#      expect(response).to have_http_status "200"
#    end
#  end
#end