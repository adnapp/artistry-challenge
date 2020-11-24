class Artist < ApplicationRecord
    has_many :instruments
    validates :name, presence: true
    validates :title, uniqueness: true
end
