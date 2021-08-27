class UsersController < ApplicationController
	before_action :set_user, only: %i[ show edit update destroy ]
  
	# GET /users or /users.json
	def index
	  @users = User.where(hidden: false)
	  render json: @users
	end
  
	# GET /users/1 or /users/1.json
	def show
		render json: @user
	end
  
	# GET /users/new
	# def new
	#   @user = User.new
	# end
  
  
	# POST /users or /users.json
	def create
		user = User.find_by_email(userObj_params[:email])
		if !!user # should ALWAYS be true since its a user from Google. Only have the truthy if/else just in case something does go wrong.
			render json: user, status: :created, location: user
		elsif !user
			user = User.new(email: userObj_params.email,
				first_name: userObj_params.givenName,
				last_name: userObj_params.familyName,
				googleId: userObj_params.googleId,
				imageUrl: userObj_params.imageUrl,
				hidden: false,
			)
			render json: user, status: :created, location: user

		end
	end
	
	# PATCH/PUT /users/1 or /users/1.json
	def update
		if @user.update(user_params)
			render json: @user
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end
  
	# DELETE /users/1 or /users/1.json
	def destroy
		@hideUser = User.find_by(email: params[:user][:email])
		@hideUser.hidden = true
		@hideUser.save
		@users = User.where(hidden: false)
		render json: @users

	#   @user.destroy
	#   respond_to do |format|
	# 	format.html { redirect_to users_url, notice: "User was successfully removed." }
	# 	format.json { head :no_content }
	#   end
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_user
		@user = User.find(params[:id])
	  end
  
	  # Only allow a list of trusted parameters through.
		def user_params
		params.require(:user).permit(
			:id,
			:first_name,
			:last_name,
			:email,
			:city,
			:state,
			:password,
			:phone,
			:travel_distance,
			:description,
			:website,
			:primary_instrument_id,
			:secondary_instrument_id,
			:other_instruments,
			:imageUrl,
			:hidden
		)
		end

		def userObj_params
			params.require(:userObj).permit(
				:googleId,
				:imageUrl,
				:email,
				:name,
				:givenName,
				:familyName,
				:hidden
			)
		end		
  end