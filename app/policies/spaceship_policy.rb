class SpaceshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Spaceship.all
    end
  end

  def show?
    true
  end

  def update?
    # Only the owner can update the record
    record.user == user
  end
end
