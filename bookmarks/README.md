
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks


CLIENT: path ‘/bookmarks’  -> method GET -> CONTROLLER: app.rb  -> .all -> MODEL: class Bookmark -> array [bookmarks] -> CONTROLLER -> array [bookmarks] -> VIEWS: erb bookmarks -> html -> CONTROLLER -> response -> CLIENT: renders html

SQL
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

Created a second database called bookmark_manager_test using the same query storied in db/migrations/01_create_bookmarks_table.sql
