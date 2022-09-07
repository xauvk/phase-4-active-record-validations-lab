class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: ['Fiction', 'Non-Fiction']
    validate :title_not_clickbaity

    def title_not_clickbaity
        if title.include "Won't Believe"
            errors.add(:title, "title is clickbait")
        elsif title.include "Secret"
            errors.add(:title, "title is clickbait")
        elsif title.include "Top"
            errors.add(:title, "title is clickbait")
        elsif title.include "Guess"
            errors.add(:title, "title is clickbait")
        end
    end
    
end
