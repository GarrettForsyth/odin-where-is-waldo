class GamesController < ApplicationController

  def setUser
    name = params[:game][:user];
    name = 'Anon' if name.blank?
    game = Game.find(params[:game][:game_id]);

    game.user = name;
    game.save;

    redirect_to photo_games_path(params[:photo_id], game_id: game.id)
  end

  def highScores
    @game = Game.find(params[:game_id])
    @photo = @game.photo
    @top_scores = Game.where(photo_id: @photo.id)
                      .where.not(score: nil)
                      .order(score: :asc)
                      .limit(100)
    js photo_url: @photo.image
  end

end
