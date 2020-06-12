class Park < ApplicationRecord
  scope :search, -> (name_parameter) { where("Name like ?", "%#{name_parameter.titleize}%")}
  scope :search, -> (location_parameter) { where("Location like ?", "%#{location_parameter.titleize}%")}
end