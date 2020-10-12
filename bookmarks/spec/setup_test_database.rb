require 'pg'

def truncate_test_db
  connection = PG.connect(dbname: 'bookmark_manager_test')
#clear bookmarks table
  connection.exec("TRUNCATE bookmarks;")
end
