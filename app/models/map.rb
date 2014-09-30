class Map < ActiveRecord::Base
  has_many :routes, autosave: true

  validates :name, presence: true, uniqueness: true

  scope :with_source, ->(source) { Map.joins(:routes).where(source: source) }
  scope :with_destination, ->(destination) { Map.joins(:routes).where(source: destination) }

  def self.shortest_path(source, destination)
    Map.with_source.with_destination.each do |map|
      routes = Route.from_map(map)

    end
  end
end
