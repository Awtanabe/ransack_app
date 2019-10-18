
class PrefecturesController < ApplicationController
  def new
    @prefecture = Prefecture.new
  end

  def create
    @pref = Prefecture.new(create_params)
 

    if @pref.save
      flash[:success] = "保存に成功"
      redirect_to "/"
    else
      flash[:error] = "保存に失敗"
      redirect_to "/prefectures/new"
    end
  end

  def create_params
    params.require(:prefecture).permit(:pref_name, :person_id)
  end
end
