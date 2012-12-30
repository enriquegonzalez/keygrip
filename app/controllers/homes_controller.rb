class HomesController < ApplicationController

	def index
	end

  def create
    @invite_request = invite_request.new(params[:invite_request])

    respond_to do |format|
      if @invite_request.save
        format.html { redirect_to @invite_request, notice: 'Awesome! Well invite you when we launch.' }
        format.json { render json: @invite_request, status: :created, location: @film }
      else
        format.html { render action: "index" }
        format.json { render json: @invite_request.errors, status: :unprocessable_entity }
      end
    end
  end
end