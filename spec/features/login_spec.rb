# frozen_string_literal: true

describe 'the signup process', type: :feature do
  it 'signs me up' do
    visit '/users/sign_up'

    expect(page).to have_content 'Sign up'

    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'Test123456'
    fill_in 'Password confirmation', with: 'Test123456'

    click_button 'Sign up'

    expect(page).to have_content 'You have signed up successfully'
  end
end

describe 'the signin process', type: :feature do
  before :each do
    @user = create(:user)
  end

  it 'signs me in' do
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    click_button 'Log in'

    expect(page).to have_content 'Signed in successfully.'
  end

  it 'renders errors on incorrect passwords' do
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: '4321Test'

    click_button 'Log in'

    expect(page).to have_content 'Invalid Email or password.'
  end
end
