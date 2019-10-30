feature 'Enter names' do
  scenario 'when players submit names in form, they see names on-screen' do
    visit('/')
    fill_in :player_1, :with => "Sara"
    fill_in :player_2, :with => "Natalie"
    click_button "Submit"
    expect(page).to have_text("Sara vs Natalie")
  end
end
