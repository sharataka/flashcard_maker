class Question < ActiveRecord::Base
  attr_accessible :correctAnswer, :correctAnswerSentence, :incorrect1, :incorrect2, :incorrect3, :questions

  # validates :questions, :correctAnswer, :correctAnswerSentence, :incorrect1, :incorrect2, :incorrect3, :presence => true

end
