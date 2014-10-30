class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @user = @user.becomes(User)
  end

  def update
    @user = User.find(params[:id])
    @user = @user.becomes(User)
    @user.update(permitted_params)

    if @user.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    user = user.becomes(User)
    user.destroy
    redirect_to :back
  end

private

  def permitted_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :staff_number,
      :address,
      :telephone_number
    )
  end
end
