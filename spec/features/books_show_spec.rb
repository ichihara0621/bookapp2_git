require 'rails_helper'

#RSpec.feature "Books", type: :feature do
#  scenario "検索で１件以上のデータが見れているか" do
#    visit login_path
#  
#      fill_in "Email", with: "ichihara.misato@lmi.ne.jp "
#      fill_in "Password", with: "ichiharamisato"
#      click_button "Log in"
#
#    visit books_path

    #book = Book.find_by(title: "Swimm")
    #click_button "Search"
    #click_link('_name')
    #expect { 
    ##fill_in "search", with: "Swimmir" 
    #click_button "Search" 
    #}.to change(Book, :count).to(1)
#    expect(page).to have_content("can't be blank")
#  end

  #scenario "ユーザー登録できること" do
  #  user = FactoryBot.build(:user,name: "test",email: "test@example.org", password: "abcdefg", password_confirmation: "abcdefg")
  #  visit new_user_path
#
  #  expect {
  #  fill_in "Name", with: user.name
  #  fill_in "Email", with: user.email
  #  fill_in "Password", with: user.password
  #  fill_in "Confirmation", with: user.password_confirmation
  #  click_button "Create my account"
  #  }.to change(User, :count).to(1)
  #end
#
  #scenario "エラーメッセージが正しく表示されること" do
  #  visit new_user_path
#
  #  fill_in "Name", with: " "
  #  fill_in "Email", with: " "
  #  fill_in "Password", with: " "
  #  fill_in "Confirmation", with: " "
  #  click_button "Create my account"
#
  #  expect(page).to have_content("can't be blank")
#
#end