class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pins = Pin.order(:created_at).page(params[:page])
    respond_with(@pins)
  end

  def show
    respond_with(@pin)
  end

  def new
    @pin = Pin.new
    @boards = Board.all
    respond_with(@pin)
  end

  def edit
  end

  def create
    @board = Board.find(pin_params[:board_id])
    @pin = @board.pins.build(pin_params)
    @pin.save
    respond_with(@pin)
  end

  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  private
    def set_pin
      @pin = Pin.friendly.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:name, :image, :image_cache, :board_id)
    end
end
