class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to sign_in_path
    else
      flash.now[:notice] = @user.errors.full_messages.to_sentences
      render :new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:title, :full_name, :date_of_birth, :mobile_no, :email, :password)
  end
end
