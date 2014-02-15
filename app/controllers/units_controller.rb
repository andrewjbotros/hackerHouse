class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  def index
    @units = Unit.all
  end

  def show
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      flash[:success] = "Unit has been created successfully"
      redirect_to @unit
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @unit.update(unit_params)
      flash[:success] = "Unit has been updated successfully"
      redirect_to @unit
    else
      render :edit
    end
  end

  def destroy
    if @unit.destroy
      flash[:success] = "Unit has beeing deleted"
      redirect_to units_path
    end
  end

private

  def set_unit
    @unit = Unit.find(params[:id])
  end

  def unit_params
    params.require(:unit).permit(:address, :unit_type, :number_of_washroom, :description)
  end

end