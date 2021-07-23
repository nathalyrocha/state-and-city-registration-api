class V1::StatesController < ApplicationController
  def index
    @states = State.includes(:cities).all
  end

  def create
    @state = State.create(state_params)

    if @state.save 
      render :create, status: :created
    else
      render json: { errors: normalize_errors(@state.errors), status: :unprocessed }
    end
  end

  private

  def state_params
    params.require(:state).permit(:name, :abbreviation, :state_id)
  end

  def normalize_errors(errors)
    errors.each_with_object({}) { |err,  hash| hash[err[0]] = err[1] }
  end
end
