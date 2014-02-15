class RoomsController < ApplicationController
  before_action :set_unit
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = @unit.rooms.new
  end

  def create
    @room = @unit.rooms.new(room_params)
    if @room.save
      flash[:success] = "Room has been successfully added to unit"
      redirect_to @room
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      flash[:success] = "Room has been successfully updated"
      redirect_to @room
    else
      render :edit
    end
  end

  def destroy
    if @room.destroy
      flash[:success] = "Room has been removed from the unit"
      redirect_to @unit
    end
  end

private

  def set_unit
    @unit = Unit.find(params[:unit_id])
  end

  def set_room
    @room = @unit.rooms.find(param[:id])
  end

  def room_params
    params.require(:roomt).permit(:price, :bed_size)
  end

end