require "test_helper"

class PetTest < ActiveSupport::TestCase
  test 'capitalize_validation! returns the capitalized name and category' do
    pet = Pet.new(name: 'kratos', category: 'cat')
    assert_equal 'Kratos - Cat', pet.capitalize_validation!
  end
end
