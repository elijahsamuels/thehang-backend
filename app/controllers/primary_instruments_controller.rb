class PrimaryInstrumentsController < ApplicationController

	# GET /instruments or /instruments.json
	def index
	  @instruments = Instrument.all
	  render json: @instruments
	end
  
	# GET /instruments/1 or /instruments/1.json
	def show
		render json: @instrument
	end
  
	# GET /instruments/new
	# def new
	#   @instrument = Instrument.new
	# end
  
	# GET /instruments/1/edit
	# def edit
	# end
  
	# POST /instruments or /instruments.json
	def create
		@instrument = Instrument.new(instrument_params)
  
		if @instrument.save
			render json: @instrument, status: :created, location: @instrument 
		else
			render json: @instrument.errors, status: :unprocessable_entity
		end
	end
			# DELETE
			#   respond_to do |format|
			# 	if @instrument.save
			# 	  format.html { redirect_to @instrument, notice: "instrument was successfully created." }
			# 	  format.json { render :show, status: :created, location: @instrument }
			# 	else
			# 	  format.html { render :new, status: :unprocessable_entity }
			# 	  format.json { render json: @instrument.errors, status: :unprocessable_entity }
			# 	end
			#   end
  
	# PATCH/PUT /instruments/1 or /instruments/1.json
	def update
		if @instrument.update(instrument_params)
			render json: @instrument
		else
			render json: @instrument.errors, status: :unprocessable_entity
		end
	end
				# DELETE
				#   respond_to do |format|
				# 	if @instrument.update(instrument_params)
				# 	  format.html { redirect_to @instrument, notice: "instrument was successfully updated." }
				# 	  format.json { render :show, status: :ok, location: @instrument }
				# 	else
				# 	  format.html { render :edit, status: :unprocessable_entity }
				# 	  format.json { render json: @instrument.errors, status: :unprocessable_entity }
				# 	end
				#   end
				# end
  
	# DELETE /instruments/1 or /instruments/1.json
	def destroy
	  @instrument.destroy
	  respond_to do |format|
		format.html { redirect_to instruments_url, notice: "instrument was successfully removed." }
		format.json { head :no_content }
	  end
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_instrument
		@instrument = Instrument.find(params[:id])
	  end
  
	  # Only allow a list of trusted parameters through.
	  def instrument_params
		params.require(:instrument).permit!(
      	:name
		)
	end
		
  end