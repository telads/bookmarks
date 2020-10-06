require "pg"

class Bookmark
  # def self.all
  #   [
  #     "http://www.bbc.co.uk",
  #     "http://www.google.com"
  #   ]
  # end

  def self.all
    conn = PG.connect( dbname: 'bookmark_manager' )
    rs = conn.exec "SELECT * FROM bookmarks"
    #
    # rs.map do |row|
    #   row["url"]
    end
  end
