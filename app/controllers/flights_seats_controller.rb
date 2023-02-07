class FlightsSeatsController < ApplicationController
  before_action :set_flights_seat, only: %i[ show edit update destroy ]

  # GET /flights_seats or /flights_seats.json
  def index
    @flights_seats = FlightsSeat.all
  end

  # GET /flights_seats/1 or /flights_seats/1.json
  def show
  end

  # GET /flights_seats/new
  def new
    @flights_seat = FlightsSeat.new
  end

  # GET /flights_seats/1/edit
  def edit
  end

  # POST /flights_seats or /flights_seats.json
  def create
    @flights_seat = FlightsSeat.new(flights_seat_params)

    respond_to do |format|
      if @flights_seat.save
        format.html { redirect_to flights_seat_url(@flights_seat), notice: "Flights seat was successfully created." }
        format.json { render :show, status: :created, location: @flights_seat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flights_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights_seats/1 or /flights_seats/1.json
  def update
    respond_to do |format|
      if @flights_seat.update(flights_seat_params)
        format.html { redirect_to flights_seat_url(@flights_seat), notice: "Flights seat was successfully updated." }
        format.json { render :show, status: :ok, location: @flights_seat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flights_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights_seats/1 or /flights_seats/1.json
  def destroy
    @flights_seat.destroy

    respond_to do |format|
      format.html { redirect_to flights_seats_url, notice: "Flights seat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flights_seat
      @flights_seat = FlightsSeat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flights_seat_params
      params.require(:flights_seat).permit(:seat_id, :flight_id)
    end
end
