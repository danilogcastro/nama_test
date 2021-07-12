class Sale < ApplicationRecord
  has_one :buyer
  has_one :supplier
end
