class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
    validates :text, presence: true
    validates :title, presence: true,
                    length: { minimum: 5 }
end
	