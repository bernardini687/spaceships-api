json.array! @spaceships do |spaceship|
  json.extract! spaceship, :id, :name, :crew
end
