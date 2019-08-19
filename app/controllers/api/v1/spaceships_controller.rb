class Api::V1::SpaceshipsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, only: %i[update create destroy]
  before_action :set_spaceship, only: %i[show update destroy]

  def index
    @spaceships = policy_scope(Spaceship)
    # @spaceships = Spaceship.all
  end

  def show; end

  def update
    if @spaceship.update(spaceship_params)
      render :show
    else
      render_error
    end
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    authorize @spaceship
    if @spaceship.save
      render :show, status: :created # 201
    else
      render_error
    end
  end

  def destroy
    @spaceship.destroy
    head :no_content # 204
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
    authorize @spaceship # pundit
  end

  def spaceship_params
    params.require(:spaceship).permit(:name, :crew)
  end

  def render_error
    render json: { errors: @spaceship.errors.full_messages },
      status: :unprocessable_entity # 422
  end
end
