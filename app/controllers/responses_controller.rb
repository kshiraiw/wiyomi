class ResponsesController < ApplicationController
	def index
		@responses = Response.all.to_a
		render json: @responses
	end
	
	def create 
		@response = Response.new(response_params)
		if @response.save
			render json: @response
		else 
			head :unprocessable_entity
		end
	end

	private

	def response_params
		params.require(:response).permit(:name, :percentage)
	end
end
