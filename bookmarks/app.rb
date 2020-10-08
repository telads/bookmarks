require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # p "bookmarks in controller: #{@bookmarks}"
    erb :'bookmarks/index'
  end
end
