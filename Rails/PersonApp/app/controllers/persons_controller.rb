class PersonsController < ApplicationController
def show
     @person = Person.find( params[ :id ] )
  end

  def index
    @persons = Person.all
  end

  def create
    Person.create( params.require( :person ).permit( :name, :alive, :age ))
    redirect_to "/persons"
  end

  def destroy
     Person.find( params[ :id ] ).destroy
     redirect_to "/persons"
  end


end
