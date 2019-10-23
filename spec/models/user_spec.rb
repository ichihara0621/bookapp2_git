require 'rails_helper'

RSpec.describe User, type: :model do
  it "メールアドレスが無効(@なし)の場合" do
    user = User.new(
      name: "ichihara misato",
      email: 'ichihara.misatolmi.ne.jp',
      password: 'ichiharamisato'
      #password_confirmation: 'ichiharamisato'
    )
    expect(user).to be_invalid
  end

  it "メールアドレスが無効(.なし)の場合" do
    user = User.new(
      name: "ichihara misato",
      email: 'ichihara.misato@lminejp',
      password: 'ichiharamisato'
      #password_confirmation: 'ichiharamisato'
    )
    expect(user).to be_invalid
  end

  it "メールアドレスが有効な場合" do
    user = User.new(
      name: "ichihara misato",
      email: 'ichihara.misato@lmi.ne.jp',
      password: 'ichiharamisato'
      #password_confirmation: 'ichiharamisato'
    )
    expect(user).to be_valid
  end

  describe '#name' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }

    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6)}
    it { should validate_length_of(:password).is_at_most(72)}

  end



  # パスワード確認が一致すること
  describe "when password doesn't match confirmation" do
    # 一致する場合
    it "is valid when password confirmation matches password" do
      user = FactoryBot.build(:user, password: "password", password_confirmation: "password")
      expect(user).to be_valid
    end

    # 一致しない場合
    it "is invalid when password confirmation doesn't match password" do
      user = FactoryBot.build(:user, password: "password", password_confirmation: "different")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
  end

 ##パスワードのバリデーション
 #it "パスワードの文字数" do
 #   
 #     it { should validate_length_of(:password).is_at_maximum(256)}
 #   
 #   expect(user).to be_invalid
 # end
end