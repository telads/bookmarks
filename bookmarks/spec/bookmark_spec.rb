require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      p "what is bookmarks #{bookmarks}"
      expect(bookmarks).to include({:id=>"1", :url=>"http://www.makersacademy.com"})
      expect(bookmarks).to include({:id=>"4", :url=>"http://www.google.com"})
    end
  end
end
