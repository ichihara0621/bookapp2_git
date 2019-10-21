require 'rails_helper'

describe 'home' do
  specify 'rootへ飛ぶか' do
    visit root_path
    expect(current_path).to eq root_path
  end
end

describe 'home' do
  specify 'rootへ飛ぶか' do
    visit root_path
    expect(current_path).to eq root_path
  end
end

#describe 'help' do
#  specify '画面の表示' do
#    visit '/static_pages/help'
#    expect(page).to have_css('h1', text: 'Help')
#  end
#end
#
#describe 'about' do
#  specify '画面の表示' do
#    visit '/static_pages/about'
#    expect(page).to have_css('h1', text: 'About')
#  end
#end