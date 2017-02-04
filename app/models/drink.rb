class Drink < ApplicationRecord
  has_many :ve_relation_ship
  has_many :vending, through: :ve_relation_ship 
end
