class CardsController < ApplicationController

before_filter :find_deck

	def new
		@card = @deck.cards.build
	end




	# All private
	private
	
	def find_deck
		@deck = Deck.find(params[:deck_id])
	end

end
