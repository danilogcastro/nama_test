class Sale < ApplicationRecord
  belongs_to :buyer
  belongs_to :supplier

  accepts_nested_attributes_for :buyer, :supplier
end
