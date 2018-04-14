class Game < ApplicationRecord

  belongs_to :photo
  has_and_belongs_to_many :characters

  def foundCharacter(character)
    self.characters << character if not self.characters.include?(character)
  end

  def isOver?
    (self.photo.characters - self.characters).empty? ?
      (return true)  :
      (return false)
  end

  def setScore
    self.score = (Time.now - self.created_at).round(2)
    self.user= 'Anon'
    self.save;
  end

end
