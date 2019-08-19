json.array! @spaceships do |spaceship|
  json.extract! spaceship, :id, :name, :crew
  json.extract! spaceship.user, :email
end
