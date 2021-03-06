class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy,:wellcome]

  def home
   end


def find

 @employees  = employee.where( "Firstname = ? OR Lastname = ?", params[ :search_string ], params[ :search_string] )

end
  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  def wellcome
  end
  # GET /employees/1
  # GET /employees/1.json
  def show
     @employee = Employee.find(params[:id])
        render  @employees
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    @employee = Employee.find( params[ :id ] )
    @employee.update_attributes( params.require(:employee).permit( :Firstname, :Lastname, :Deparment,:Timein,:Timeout,:Notification) )
    redirect_to "/employees/#{@employee.id}"

    #respond_to do |format|
      #if @employee.update(employee_params)
        #format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        #format.json { render :show, status: :ok, location: @employee }
      #else
        #format.html { render :edit }
        #format.json { render json: @employee.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
  @employee = Employee.find(params[:id])
   @employee.destroy
  redirect_to "/employees"
    #@employee.destroy
    #respond_to do |format|
      #format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:Firstname, :Lastname, :Deparment, :Timein, :Timeout, :Notification)
    end
end
