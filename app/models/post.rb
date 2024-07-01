class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50}
    validates :description, presence: true, length: { minimum: 5, maximum: 500}
    validates :keywords, presence: true, length: { minimum: 5, maximum: 100}

    has_many_attached :images
end
