require 'rails_helper' 

describe "Post a new message" do 

  context 'Add a new message' do 
    before do 
      visit '/posts/new'

      fill_in 'Title',  with: 'Post for it'
      fill_in 'Content', with: 'Just some random content' 

      click_button('Create Post') 
    end

    it 'have the proper created message' do 
      expect(page).to have_content('Today I made a Message Board!')
    end
  end
end
