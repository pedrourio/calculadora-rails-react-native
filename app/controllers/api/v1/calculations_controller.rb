class Api::V1::CalculationsController < ApplicationController

  #GET
  def index
    @calculations = Calculation.order(created_at: :desc).limit(20)
    render json: @calculations
  end

  #POST
  def create
    @calculation = Calculation.new(calculation_params)

    if(@calculation.save)
      render @calculation, status: :created
    else
      render json: @calculation.errors, status: :unprocessable_entity
    end
  end

  private

  def calculation_params
    params.require(:calculation).permit(:expression, :result)
  end

end
