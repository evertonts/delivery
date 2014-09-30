class RoutesConverter
  include Singleton
  
  def convert(mesh)
    routes = []
    mesh.each_line do |route|
      fields = route.split
      routes << Route.new(source: fields[0], destination: fields[1], distance: fields[2])
    end
    routes
  end
end