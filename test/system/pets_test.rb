require 'application_system_test_case'

class PetsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit root_url # "/"
    assert_selector 'h1', text: 'Pets Availables'
    assert_selector '.card', count: Pet.count
  end

  test 'add a new pet' do
    visit '/pets/new'
    # save_screenshot

    fill_in 'pet_name', with: 'Tyson'
    fill_in 'pet_category', with: 'Dog'
    # save_screenshot

    click_on 'Create Pet'
    # save_screenshot

    assert_text 'New Pet'
  end
end
