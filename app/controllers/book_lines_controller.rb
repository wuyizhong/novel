#encoding: utf-8
class BookLinesController < ApplicationController
	caches_page :index

	@@id=1
	def show
		@booklin = BookLine.find(params[:id])
		#a= @booklin
		#@booklinup = Bookline.find(params[:id]+1)
		@dd=params[:dd]
		@@id = params[:id]
		expire_page :action => :index
	end

	def index
		@books = Book.find(params[:book_id])
		#@books = Book.where(:id =>9)

	end

	def previous
		#@books = Book.find(params[:book_id])
		#@booklin = BookLine.find(params[:id])
		@booklin = BookLine.find(@@id.to_i-1)
		#@@id+=1
		@@id=@@id.to_i-1

		render :show
	end

	def next
		#@books = Book.find(params[:book_id])
		#@booklin = BookLine.find(params[:id])
		@booklin = BookLine.find(@@id.to_i+1)
		@@id=@@id.to_i+1
		render :show
	end


end