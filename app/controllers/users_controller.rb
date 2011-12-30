# encoding: utf-8
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to calendars_path
	  session[:user_id] = @user.id
    else
      render 'new'
    end
  end
  
end
