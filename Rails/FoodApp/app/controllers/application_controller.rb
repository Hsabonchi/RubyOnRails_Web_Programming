class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def hello
    render html: " Wellcome to Food APP!"
  end
end
