class Location < ApplicationRecord
  serialize :coord, JSON

  belongs_to :photo
  belongs_to :character


  GUESS_RADIUS = 50; #in pixels

  def isCorrectGuess(guess)
    if (guess["x"] - self.coord["x"]).abs < GUESS_RADIUS and 
        (guess["y"] - self.coord["y"]).abs < GUESS_RADIUS

      return true;
    end
    return false;
  end

end
