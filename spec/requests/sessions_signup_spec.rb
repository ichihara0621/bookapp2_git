#require 'rails_helper'
#
#RSpec.describe "TestLoginController", type: :request do
#  context do
#    let(:user) { FactoryBot.create(:user) }
#    before 'ユーザーIDをセッションから取り出せるようにする' do
#      allow_any_instance_of(ActionDispatch::Request)
#        .to receive(:session).and_return(user_id: user.id)
#    end
#
#    it '/hoge が成功してユーザー情報が○○する' do
#      get '/hoge'
#
#      expect(response).to be_successful
#      expect(User.find user).to have_attributes(
#        hoge: 'fuga'
#      )
#    end
#  end
#end