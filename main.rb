require 'dxruby'

Dir['lib/fixtures/enemy/*.rb',
    'lib/fixtures/player/*.rb',
    'lib/fixtures/cards/*.rb',
    'lib/scene/*.rb'].each do |file|
  require_relative file
end

scene = Scene::Opening.new

Window.loop do
  scene.update
  scene = scene.next_scene if scene.finish?
  Window.close unless scene

end