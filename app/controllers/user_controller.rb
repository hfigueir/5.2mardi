class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #@user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio]) # A utiliser pour les deux premiers formulaires
    @user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio]) # Dans le cas de form_for il faut ajouter [:user] car l'attribut devient user[username] par exemple
      redirect_to '/'
  end
end
