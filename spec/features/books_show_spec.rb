require 'rails_helper'


RSpec.feature "Books", type: :feature do
 before do
    @user=FactoryBot.create(:user)
    FactoryBot.create_list(:book, 50)
 end
  describe "Books_pathへ行くと" do
  
    scenario "ログイン後Bookページに本が３０個映り、３１個目はない" do
      
      visit login_path
    
        fill_in "Email", with: "tester1@example.com"
        fill_in "Password", with: "password"
        click_button "Log in"
    
        visit books_path
  
      
        expect(page).to have_content("Mytitle1")
        expect(page).to have_content("Mytitle30")
        expect(page).not_to have_content("Mytitle31")
    end

    
    scenario "検索に当てはまる文字の場合、本がリストに出る" do
      # FactoryBot.create(:user)
      # FactoryBot.create_list(:book, 50)
      visit signup_path
      fill_in "Name", with: "ah"
      fill_in "Email", with: "ah@ah.ah"
      fill_in "Password", with: "ahahahah"
      fill_in "Confirmation", with: "ahahahah"
      click_button "Create my account"
    
        visit books_path
       
        fill_in "title", with: "Mytitle5" 
        click_button "Search"
      expect(page).to have_content("Mytitle5", count: 9)
      expect(page).to have_css('li.titles', count: 9)
      expect(page).to have_content("Mytitle52")
      expect(page).not_to have_content("Mytitle63")
    end

    
    scenario "検索に当てはまらない文字の場合、NotFoundでる" do
      # FactoryBot.create(:user)
      # FactoryBot.create_list(:book, 50)
      visit signup_path
      fill_in "Name", with: "ahi"
      fill_in "Email", with: "ah@ah.ahi"
      fill_in "Password", with: "ahahahahi"
      fill_in "Confirmation", with: "ahahahahi"
      click_button "Create my account"
    
        visit books_path
       
        fill_in "title", with: "aaaaa" 
        click_button "Search"
      expect(page).to have_content("Not Found")
      
    end

  end
 
end