class Book < ApplicationRecord
  validates :title,  presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 50 }
  #validates :publisher,  presence: true, length: { maximum: 50 }
  validates :genre,  presence: true, length: { maximum: 50 }
 
  def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      Book.all 
    end
  end

end
