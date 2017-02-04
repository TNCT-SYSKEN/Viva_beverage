class Vending < ApplicationRecord
  has_many :ve_relation_ship
  has_many :drink, through: :ve_relation_ship
end
