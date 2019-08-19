class Api::V1::SpaceshipsController < Api::V1::BaseController
  before_action :set_spaceship, only: %i[show]
  def index
    @spaceships = policy_scope(Spaceship)
    # @spaceships = Spaceship.all
  end

  def show; end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
    authorize @spaceship # pundit
  end
end
