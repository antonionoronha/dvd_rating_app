class Film < ApplicationRecord

    validates :name, :director, :launch_year, :sinopse, :rating, presence: true

    def day
        self.created_at.strftime("%b %e, %y")
    end

    def self.search(search)
        if search 
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end

end
