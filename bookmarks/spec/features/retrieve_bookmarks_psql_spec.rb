# feature 'view bookmarks from psql database' do
#   scenario 'retrieves bookmarks' do
#     visit '/bookmarks'
#     expect(page).to have_content "http://www.makersacademy.com"
#     expect(page).to have_content "http://www.askjeeves.com"
#     expect(page).to have_content "http://www.twitter.com"
#     expect(page).to have_content "http://www.google.com"
#   end
# end




require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
