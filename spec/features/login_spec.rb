describe "the signup process", type: :feature do
  it "signs me up" do
    visit '/users/sign_up'

    expect(page).to have_content "Sign up"

    fill_in 'Email', with: "test@example.com"
    fill_in 'Password', with: "Test123456"
    fill_in 'Password confirmation', with: "Test123456"

    click_button "Sign up"

    expect(page).to have_content "You have signed up successfully"
    
  end
end