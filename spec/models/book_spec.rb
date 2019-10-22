require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Book登録が無効の場合" do
    book = Book.new(
      title: '',
      author: '',
      genre: ''
    )
    expect(book).to be_invalid
  end
  it "Book登録が有効な場合" do
    book = Book.new(
      title: "ichihara misato",
      author: 'ichihara.misato@lmi.ne.jp',
      genre: 'ichiharamisato'
    )
    expect(book).to be_valid
  end
end

