class StatesController < ApplicationController
  def index
    @states = State.includes(:cities).all
  end

  def create
    @state = State.create(state_params)

    if @state.save 
      render :create, status: :created
    else
      render json: { errors: @state.errors, status: :unprocessed }
    end
  end

  private

  def state_params
    params.require(:state).permit(:name, :abbreviation, :state_id)
  end
end
