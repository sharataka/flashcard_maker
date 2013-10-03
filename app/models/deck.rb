class Deck < ActiveRecord::Base
	attr_accessible :name

 	validates :name, :presence => true

 	has_many :flashcards, :dependent => :delete_all
end
