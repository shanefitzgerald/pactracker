class SenatorsController < ApplicationController

	def index
		@senators = Senator.all
	
	end

	def create
       @senator = Senator.new(senator_params)
    if @senator.save
      respond_to do |format|
      format.html {redirect_to senators_path}
      format.json {render json: @senator, status: :created}
      end
    else
      respond_to do |format|
      format.html {render :new}
      format.json {render json: @senator.errors, status: :unprocessable_entity}
      end
    end
  end
	
end
