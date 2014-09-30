class Route < ActiveRecord::Base
  belongs_to :map

  validates :source, :destination, :distance, presence: true

  scope :from_map, ->(map) { where(map: map) }
end
