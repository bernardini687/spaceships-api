json.extract! @spaceship, :id, :name, :crew
json.spacemen @spaceship.spacemen do |spaceman|
  json.extract! spaceman, :id, :name, :job
end
