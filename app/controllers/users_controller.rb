class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    users = User.all
    render json: users, except: [:email, :password_digest, :updated_at, :created_at]
  end

  def create
    @user = User.create user_params
    render json: @user, except: [:email, :password_digest, :updated_at, :created_at]
  end

  def show
    render json: @user, except: [:email, :password_digest, :updated_at, :created_at]
  end

  def update
    @user.update user_params
    render json: @user, except: [:email, :password_digest, :updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:id, :name, :top_score)
  end
end
