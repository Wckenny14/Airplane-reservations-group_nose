class Flight < ApplicationRecord
     has_and_belongs_to_many :seats
     has_and_belongs_to_many :users
     belongs_to :airplanes, :optional => true
end
