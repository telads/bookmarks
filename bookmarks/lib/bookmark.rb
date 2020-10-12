require "pg"

class Bookmark
  def self.all

  #   # begin
  #   if ENV['ENVIRONMENT'] == 'test'
  #     con = PG.connect :dbname => 'bookmark_manager_test', :user => 'student'
  #   else
  #     con = PG.connect :dbname => 'bookmark_manager', :user => 'student'
  #   end
  #     rs = con.exec "SELECT * FROM bookmarks"
  #     results = []
  #     rs.each do |row|
  #        results << {id: row["id"],  url: row["url"]}
  #     end
  # end
  #   # p "in the bookmark model: #{results}"
  #   results


      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'bookmark_manager_test')
      else
        connection = PG.connect(dbname: 'bookmark_manager')
      end

      result = connection.exec("SELECT * FROM bookmarks")
      result.map { |bookmark| bookmark['url'] }
<<<<<<< HEAD
end
=======
  end
>>>>>>> edc2ef36f28d5aa808bfabecd5b06a79361db27c
end
