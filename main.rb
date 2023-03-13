require "dxruby"

Dir[
  "lib/fixtures/fixtures.rb",
  "lib/fixtures/card/card_base.rb",
  "lib/fixtures/player/player_base.rb",
  "lib/fixtures/enemy/enemy_base.rb",
  "lib/fixtures/**/*.rb",
  "lib/scene/scene_base.rb",
  "lib/scene/*.rb"
    ].each do |file|
  require_relative file
end
scene = Scene::Title.new

Window.loop do
  scene.update
  scene = scene.next_scene if scene.finish?
  Window.close unless scene
end