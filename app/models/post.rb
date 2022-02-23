class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(fiction non-fiction)}
    validates :title_cannot_be_clickbait

    def title_cannot_be_clickbait
        if title.include?("Won't Believe" || "Secret" || "Top #{1..100}" || "Guess")
        errors.add(:title, "title contains clickbait language")
        end
    end
end
