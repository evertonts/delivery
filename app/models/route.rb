class Route < ActiveRecord::Base
  belongs_to :map
  
  validates :source, :destination, :distance, presence: true
end
