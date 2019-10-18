class PersonsController < ApplicationController
  def index
    @q = Person.ransack(params[:q])
    @persons = @q.result.includes(:prefectures)
     
  end


end
