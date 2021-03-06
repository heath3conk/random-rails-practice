class SessionController < ApplicationController

  def create
    @user = User.find_by(username: session_params[:username])

    if @user
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = "something wasn't right"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to pets_url
  end

  private

    def session_params
      params.require(:session).permit(:username, :password_digest)
    end
end