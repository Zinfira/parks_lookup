class Park < ApplicationRecord
  scope :search, -> (name_parameter) { where("Name like ?", "%#{name_parameter}%")}
end