class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(username: params[:id])
  end

  def new
    #form for adding new user
    @user = User.new
  end

  def create
    #take the params from the form
    #create a new user
    @user = User.new(form_params)
    #if its valid and it saves, go to the list users page
    #if not, see the form with errors
    if @user.save

      #save the session with the users
      session[:user_id] =  @user.id
      flash[:success] = "Welcome to Bien!"

      redirect_to users_path
    else
      render "new"
    end
  end

  def form_params
    params.require(:user).permit(:avatar, :username, :email, :password, :password_confirmation)
  end
end
