class DecksController < ApplicationController
	
	def index
		@decks = Deck.all
	end

	def new
		@deck = Deck.new
	end

	def edit
		@deck = Deck.find(params[:id])
	end

	def create
		@deck = Deck.new(params[:deck]) 
		if @deck.save
			flash[:notice] = "Deck has been created."
			redirect_to @deck
		else
			flash[:alert] = "Deck has not been created."
    		render :action => "new"
		end
	end

	def show
		@deck = Deck.find(params[:id])
		# @decks = Deck.all
	end

	def destroy
		@deck = Deck.find(params[:id])
		@deck.destroy
		flash[:notice] = "Deck has been deleted."
  		redirect_to decks_path
	end

	def update
		@deck = Deck.find(params[:id])
		if @deck.update_attributes(params[:deck])
			flash[:notice] = "Deck has been updated."
			redirect_to @deck
		else
			flash[:alert] = "Deck has not been updated."
			render :action => "edit"
		end
	end

end
