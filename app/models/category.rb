class Category < ApplicationRecord
    has_many :vinyls
    validates :name, presence: true, uniqueness: true
end
