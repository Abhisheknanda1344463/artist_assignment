class PaintingsController < ApplicationController
  def create
    debugger
    @painting = Painting.new(permit_params)
    @painting.artist_id = params[:artist_id]
    if @painting.save
      redirect_to artist_path(params[:artist_id])
    else
    end
  end

  private
  def permit_params
    params.require(:painting).permit(:picture,:public)
  end
end
