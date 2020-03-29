# frozen_string_literal: true

describe 'authentication', type: :feature do
  it 'disallows creation of project profiles without authentication' do
    visit '/project_profiles/new'
    expect(page).to have_content 'unauthorized'
  end
end
