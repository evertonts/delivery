class Map < ActiveRecord::Base
  has_many :routes, autosave: true
  
  validates :name, presence: true
end
