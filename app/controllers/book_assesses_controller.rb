#encoding: utf-8
class BookAssessesController < ApplicationController
	def create
		@book = Book.find(params[:book_id])
		@book_assess = @book.book_assesses.new(params[:book_assess])
		if session[:user_id]
			@book_assess.user_id = session[:user_id]
			@book_assess.save
			redirect_to @book
		else

			redirect_to @book, :notice =>'还没登录不能评论'
		end
	end
end