class PhotosController < ApplicationController


  def show
    @photo = Photo.find(params[:id])
    @game = Game.create(photo: @photo)
    js :photo_id => @photo.id, :game_id => @game.id
  end

  def guess
    photo = Photo.find(params[:id])
    game = Game.find(params[:game_id])
    character = Character.find_by(name: params[:guessName].strip);
    guessCoord = params[:guessCoord];

    location = photo.locations.select{ |l| l.character == character }.first
    found = location.isCorrectGuess(guessCoord);

    game.foundCharacter(character) if found
    over = game.isOver?;
    game.setScore if over

    respond_to do |format|
      format.json { render json: { response: { found: found, over: over } } }
    end

  end

end
