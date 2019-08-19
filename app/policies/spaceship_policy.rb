class SpaceshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Spaceship.all
    end
  end
end
