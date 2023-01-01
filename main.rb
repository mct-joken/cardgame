require 'dxruby'

p 1
Dir[
  "lib/fixtures/**/*.rb",
    "lib/scene/*.rb"
    ].each do |file|
  puts file
  require_relative file
end
p 2
scene = Scene::Opening.new
p 3

Window.loop do
  scene.update
  scene = scene.next_scene if scene.finish?
  Window.close unless scene
end