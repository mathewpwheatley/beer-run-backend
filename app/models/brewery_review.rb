class BreweryReview < ApplicationRecord
    # ActiveRecord Relationships
    belongs_to(:brewery)
    belongs_to(:user)

    # ActiveRecord Validatons (See db schema for additional validators)
    validates(:title, length: { in: 10..50 })
    validates(:content, length: { in: 50..500 })
    validates(:rating, inclusion: { in: 0..5 })

    # Instance Methods
    def author_name
        self.user.full_name
    end

    def author_id
        self.user.id
    end

    def subject_name
        self.brewery.name
    end

    def subject_id
        self.brewery.id
    end
    
end