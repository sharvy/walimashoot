class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @boards = Board.all
    @pins = Pin.order(:created_at).page(params[:page])
    respond_with(@pins)
  end

  def show
    respond_with(@pin)
  end

  def new
    @pin = Pin.new
    respond_with(@pin)
  end

  def edit
  end

  def create
    @board = Board.find(pin_params[:board_id])
    @pin = @board.pins.build(pin_params)
    @pin.save
    redirect_to pins_path
  end

  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  def pin_post
    @current_pin = set_pin
    @pin = @current_pin.repin_post(params[:board_id])
    redirect_to pins_path
  end

  private
    def set_pin
      @pin = Pin.friendly.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:name, :image, :external_image_url, :image_cache, :board_id)
    end
end
