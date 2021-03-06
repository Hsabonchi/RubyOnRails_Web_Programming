class ClientWorkoutsController < ApplicationController
  before_action :set_client_workout, only: [:show, :edit, :update, :destroy]

  def find

  @client_workouts = ClientWorkout.where( "client_name = ? OR trainer = ?", params[ :search_string ], params[ :search_string] )
  end

  # GET /client_workouts
  # GET /client_workouts.json
  def index
    @client_workouts = ClientWorkout.all
  end


  # GET /client_workouts/1
  # GET /client_workouts/1.json
  def show
  end

  # GET /client_workouts/new
  def new
    @client_workout = ClientWorkout.new
  end

  # GET /client_workouts/1/edit
  def edit
  end

  # POST /client_workouts
  # POST /client_workouts.json
  def create
    @client_workout = ClientWorkout.new(client_workout_params)

    respond_to do |format|
      if @client_workout.save
        format.html { redirect_to @client_workout, notice: 'Client workout was successfully created.' }
        format.json { render :show, status: :created, location: @client_workout }
      else
        format.html { render :new }
        format.json { render json: @client_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_workouts/1
  # PATCH/PUT /client_workouts/1.json
  def update
    respond_to do |format|
      if @client_workout.update(client_workout_params)
        format.html { redirect_to @client_workout, notice: 'Client workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_workout }
      else
        format.html { render :edit }
        format.json { render json: @client_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_workouts/1
  # DELETE /client_workouts/1.json
  def destroy
    @client_workout.destroy
    respond_to do |format|
      format.html { redirect_to client_workouts_url, notice: 'Client workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_workout
      @client_workout = ClientWorkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_workout_params
      params.require(:client_workout).permit(:client_name, :trainer, :duration_mins, :date_of_workout, :paid_amount)
    end
end
