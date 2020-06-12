class Park < ApplicationRecord
  validates :name, :location, :content, presence: true
  scope :search, -> (name_parameter) { where("Name like ?", "%#{name_parameter.titleize}%")}
  scope :search, -> (location_parameter) { where("Location like ?", "%#{location_parameter.titleize}%")}
  scope :search, -> (content_parameter) { where("Content like ?", "%#{content_parameter}%")}
end