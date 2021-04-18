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
		# byebug
		user = User.find_by_email(userObj_params[:email])
		if !!user # should ALWAYS be true since its a user from Google. Only have the truthy if/else just in case something does go wrong.
			render json: user, status: :created, location: user
		elsif !user
			# this should send a message to React to redirect the user to l
			# byebug
			user = User.new(email: userObj_params.email,
				first_name: userObj_params.givenName,
				last_name: userObj_params.familyName,
				googleId: userObj_params.googleId,
				imageUrl: userObj_params.imageUrl,
				hidden: false,
			)
			render json: user, status: :created, location: user

			# render json: user.errors, status: :unprocessable_entity
		end
		# find user by email
		# if !!email then return that user as the currentUser
		# if !email 
		# @user = User.new(user_params)
		# email = user_params[:email]
  	end
			# DELETE
			#   respond_to do |format|
			# 	if @user.save
			# 	  format.html { redirect_to @user, notice: "User was successfully created." }
			# 	  format.json { render :show, status: :created, location: @user }
			# 	else
			# 	  format.html { render :new, status: :unprocessable_entity }
			# 	  format.json { render json: @user.errors, status: :unprocessable_entity }
			# 	end
			#   end
  
	# PATCH/PUT /users/1 or /users/1.json
	def update
		if @user.update(user_params)
			render json: @user
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end
				# DELETE
				#   respond_to do |format|
				# 	if @user.update(user_params)
				# 	  format.html { redirect_to @user, notice: "User was successfully updated." }
				# 	  format.json { render :show, status: :ok, location: @user }
				# 	else
				# 	  format.html { render :edit, status: :unprocessable_entity }
				# 	  format.json { render json: @user.errors, status: :unprocessable_entity }
				# 	end
				#   end
				# end
  
	# DELETE /users/1 or /users/1.json
	def destroy
		@hideUser = User.find_by_email(userObj_params[:email])
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