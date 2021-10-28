class BookComment < ApplicationRecord
  
  belongs_to :user
  belongs_to :book
  
  validates :comment, presence: true #commentで空白が渡されたらエラーが
  
end
