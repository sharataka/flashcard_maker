require "json"

class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end

	def new
		@question = Question.new
	end

	def edit
		@question = Question.find(params[:id])
	end

	def create
		@question = Question.new(params[:question]) 
		if @question.save
			flash[:notice] = "question has been created."
			redirect_to @question
		else
			flash[:alert] = "question has not been created."
    		render :action => "new"
		end
	end

	def show
		@question = Question.find(params[:id])
		# render :json => @question
	end

	def api
		@question = Question.find(params[:id])
		render :json => @question
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy
		flash[:notice] = "Question has been deleted."
  		redirect_to questions_path
	end

	def update
		@question = Question.find(params[:id])
		if @question.update_attributes(params[:question])
			flash[:notice] = "question has been updated."
			redirect_to @question
		else
			flash[:alert] = "question has not been updated."
			render :action => "edit"
		end
	end
end
