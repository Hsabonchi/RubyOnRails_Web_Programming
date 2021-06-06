class CoursesController < ApplicationController
def show
  @course = Course.find( params[:id ] )
  end
  
  
  
  def index
    @courses = Course.all
  end
  
  
  
  def create
    Course.create(params.require(:course).permit(:department,:number ,:title,:size,:hours,:teacher ))
    redirect_to "/courses"
  end


   def destroy
     Course.find( params[ :id ] ).destroy
     redirect_to "/Course"
  end
end
