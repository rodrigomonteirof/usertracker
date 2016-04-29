class UsersController < ApplicationController
  def create
    user = User.find(user_params[:user_id])
    user.email = user_params[:email]
    user.nome = user_params[:nome]

    if user.valid? && user.save
      render json: user
    else
      render json: { :errors => user.errors.full_messages }, status: 403
    end
  end

  private

  def user_params
    params.permit(:user_id, :email, :nome)
  end
end
