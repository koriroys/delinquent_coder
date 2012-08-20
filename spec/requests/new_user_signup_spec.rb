describe "on first login" do
  specify "user is prompted to create a new repo to store their writings" do
    visit root_url
    click_link 'Login with Github'
    expect(page).to have_content("Create a repo to store your documents")
  end
end
