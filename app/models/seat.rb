class Seat < ApplicationRecord
    has_and_belongs_to_many :flights
    belongs_to :airplane, :optional => true
end
