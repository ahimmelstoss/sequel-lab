require 'sequel'

DB = Sequel.connect('sqlite://artists.db') #establish connection between model and DB

class Artist < Sequel::Model #extend the class
	
end