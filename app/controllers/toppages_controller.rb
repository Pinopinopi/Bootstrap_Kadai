class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.microposts.build  # form_for 用
      @tasks = current_user.microposts.order('created_at DESC').page(params[:page])
    end
  end
end