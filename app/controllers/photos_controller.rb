class PhotosController < ApplicationController


  def show
    @photo = Photo.find(params[:id])
    js :photo_id => @photo.id
  end

  def guess
    @photo = Photo.find(params[:id])
    name = params[:guessName].strip;
    guessCoord = params[:guessCoord];
    location = @photo.locations.select{ |l| l.character.name.eql?(name) }.first

    respond_to do |format|
      format.json { render json: { response: location.isCorrectGuess(guessCoord) } }
    end

  end
end
