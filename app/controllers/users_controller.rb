class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit profile update ]

  # GET /users or /users.json
  def index
    @users = User.all
    authorize @users
  end

  # GET /users/1 or /users/1.json
  def show
  end


  # GET /users/1/edit
  def edit
    authorize @user
  end

  # GET /users/profile
  def profile
  end


  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if params[:id].present?
        @user = User.find(params[:id])
      else 
        @user = current_user
      end
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
