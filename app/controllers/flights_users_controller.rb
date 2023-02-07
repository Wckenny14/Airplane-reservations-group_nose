class FlightsUsersController < ApplicationController
  before_action :set_flights_user, only: %i[ show edit update destroy ]

  # GET /flights_users or /flights_users.json
  def index
    @flights_users = FlightsUser.all
  end

  # GET /flights_users/1 or /flights_users/1.json
  def show
  end

  # GET /flights_users/new
  def new
    @flights_user = FlightsUser.new
  end

  # GET /flights_users/1/edit
  def edit
  end

  # POST /flights_users or /flights_users.json
  def create
    @flights_user = FlightsUser.new(flights_user_params)

    respond_to do |format|
      if @flights_user.save
        format.html { redirect_to flights_user_url(@flights_user), notice: "Flights user was successfully created." }
        format.json { render :show, status: :created, location: @flights_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flights_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights_users/1 or /flights_users/1.json
  def update
    respond_to do |format|
      if @flights_user.update(flights_user_params)
        format.html { redirect_to flights_user_url(@flights_user), notice: "Flights user was successfully updated." }
        format.json { render :show, status: :ok, location: @flights_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flights_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights_users/1 or /flights_users/1.json
  def destroy
    @flights_user.destroy

    respond_to do |format|
      format.html { redirect_to flights_users_url, notice: "Flights user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flights_user
      @flights_user = FlightsUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flights_user_params
      params.require(:flights_user).permit(:user_id, :flight_id, :seat_number)
    end
end
