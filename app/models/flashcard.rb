class Flashcard < ActiveRecord::Base
  belongs_to :deck
  attr_accessible :back, :front
  validates :front, :back, :presence => true
end
