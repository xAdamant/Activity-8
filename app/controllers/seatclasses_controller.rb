class SeatclassesController < ApplicationController
  before_action :set_seatclass, only: [:show, :edit, :update, :destroy]

  # GET /seatclasses
  # GET /seatclasses.json
  def index
    @seatclasses = Seatclass.all
  end

  # GET /seatclasses/1
  # GET /seatclasses/1.json
  def show
  end

  # GET /seatclasses/new
  def new
    @seatclass = Seatclass.new
  end

  # GET /seatclasses/1/edit
  def edit
  end

  # POST /seatclasses
  # POST /seatclasses.json
  def create
    @seatclass = Seatclass.new(seatclass_params)

    respond_to do |format|
      if @seatclass.save
        format.html { redirect_to @seatclass, notice: 'Seatclass was successfully created.' }
        format.json { render :show, status: :created, location: @seatclass }
      else
        format.html { render :new }
        format.json { render json: @seatclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seatclasses/1
  # PATCH/PUT /seatclasses/1.json
  def update
    respond_to do |format|
      if @seatclass.update(seatclass_params)
        format.html { redirect_to @seatclass, notice: 'Seatclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @seatclass }
      else
        format.html { render :edit }
        format.json { render json: @seatclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seatclasses/1
  # DELETE /seatclasses/1.json
  def destroy
    @seatclass.destroy
    respond_to do |format|
      format.html { redirect_to seatclasses_url, notice: 'Seatclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seatclass
      @seatclass = Seatclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seatclass_params
      params.require(:seatclass).permit(:class_name, :price, :food_sertvice, :seat_type, :leg_room)
    end
end
