describe 'List', :type => :feature  do
  it "creates a list with an item" do
    visit new_list_path

    within(:css, '.form_group') do
      fill_in 'Name', with: 'moo'
    end
    #expect(page).to have_content('Sign out')
  end
end
