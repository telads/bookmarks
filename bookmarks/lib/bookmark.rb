require "pg"

class Bookmark
  def self.all

    begin
      con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
      rs = con.exec "SELECT * FROM bookmarks"
      results = []
      rs.each do |row|
         results << {id: row["id"],  url: row["url"]}
      end
    end
    # p "in the bookmark model: #{results}"
    results
  end
end
