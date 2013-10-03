class FlashcardsController < ApplicationController

	before_filter :find_deck
	before_filter :find_flashcard, :only => [:show, :edit, :update, :destroy]

	def new
		@flashcard = @deck.flashcards.build
	end

	def create
		@flashcard = @deck.flashcards.build(params[:flashcard])
		if @flashcard.save
			flash[:notice] = "Flashcard has been created."
			redirect_to "/decks/#{@deck.id}/flashcards/new"
		else
			flash[:alert] = "Flashcard has not been created."
			render :action => "new"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @flashcard.update_attributes(params[:flashcard])
			flash[:notice] = "flashcard has been updated."
			redirect_to "/decks/#{@deck.id}"
		else
			flash[:alert] = "flashcard has not been updated."
			render :action => "edit"
		end
	end

	def destroy
		@flashcard.destroy
		flash[:notice] = "Flashcard has been deleted."
  		redirect_to @deck
	end

	# All private
	private
	
	def find_deck
		@deck = Deck.find(params[:deck_id])
	end

	def find_flashcard
		@flashcard = @deck.flashcards.find(params[:id])
	end


end
