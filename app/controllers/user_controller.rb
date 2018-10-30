class UserController < ApplicationController

  def new
  end


  def create
    
#    FORM_FOR
#    parama = params[:user]
#    @user = User.create(username: parama["username"], email: parama["email"], bio: parama["bio"])
    
#    FOR HTML & FORM_TAG
    @user = User.create(username: params["username"], email: params["email"], bio: params["bio"])

    if @user.save
      redirect_to action: "show", username: @user.username
    else
      render "new"
    end

  end 

  def show
    @user = User.find_by(username: params[:username])
#    @user = User.find_by(params[:username])
  end
  def test
    
  end
end






