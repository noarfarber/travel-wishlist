class DestinationsController < ApplicationController
  before_action :set_destination, only: %i( show edit update destroy )

  def index
    @destinations = Destination.all.order(created_at: :desc)
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def edit
  end

  def create
    @destination = Destination.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to destination_url(@destination), notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to destination_url(@destination), notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @destination.destroy

    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:location, :image, :fromdate, :todate)
  end
end
