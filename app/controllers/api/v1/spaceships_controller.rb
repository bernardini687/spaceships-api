class Api::V1::SpacehipsController < Api::V1::BaseController
  def index
    @spaceships = policy_scope(Spaceship)
    # @spaceships = Spaceship.all
  end
end
