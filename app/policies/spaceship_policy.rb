class SpaceshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Spaceship.all
    end

    def show?
      true
    end
  end
end
