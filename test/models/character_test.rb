require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  def setup
    @character = Character.new(name: "Waldo",
                               image: Rails.root.join("app/assets/images/waldo.jpg").open)
  end

  test 'character should be valid' do
    assert @character.valid?
  end

  test 'no name should be invalid' do
    @character.name = ''
    assert_not @character.valid?
  end

  test 'no image should be invalid' do
    @character.image = '';
    assert_not @character.valid?
  end
end
