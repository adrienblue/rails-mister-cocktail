class Ingredient < ApplicationRecord

  has_many :doses

  validates :name, presence: true, allow_nil: false, uniqueness: true

end
