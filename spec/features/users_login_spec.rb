require 'rails_helper'

RSpec.feature "Users", type: :feature do

 

  scenario "Signupページにページ遷移できるか" do
    visit root_path
    click_on "Sign up"

    expect(page).to have_content("Sign up")
  end

  scenario "ユーザー登録できること" do
    user = FactoryBot.build(:user,name: "test",email: "test@example.org", password: "abcdefg", password_confirmation: "abcdefg")
    visit new_user_path

    expect {
    fill_in "Name", with: user.name
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Confirmation", with: user.password_confirmation
    click_button "Create my account"
    }.to change(User, :count).to(1)
  end

  scenario "エラーメッセージが正しく表示されること" do
    visit new_user_path

    fill_in "Name", with: " "
    fill_in "Email", with: " "
    fill_in "Password", with: " "
    fill_in "Confirmation", with: " "
    click_button "Create my account"

    expect(page).to have_content("can't be blank")

  end

  
 #loginエラーメッセージ

  scenario "正しいemailとパスワードでログイン成功" do
    @user = FactoryBot.create(:user)
    visit login_path
  
      fill_in "Email", with: "tester1@example.com"
      fill_in "Password", with: "password"
      click_button "Log in"
  
      expect(current_path).to eq user_path(@user.id)
  
  end

 #ユーザー名とパスワードが違う
  scenario "ユーザー名とパスワードが違う場合のエラー" do
      visit login_path
  
      fill_in "Email", with: "ichihara.misato@lmi.ne.jp "
      fill_in "Password", with: "aiueokaki"
      click_button "Log in"
  
      expect(page).to have_content("Invalid email/password combination")
  
  end
 #ユーザーがいない
 scenario "登録されていないユーザーのエラー" do
      visit login_path
  
      fill_in "Email", with: "ichihara@lmi.ne.jp "
      fill_in "Password", with: "aiueoooooooo"
      click_button "Log in"
  
      expect(page).to have_content("Invalid email/password combination")
  
  end




end