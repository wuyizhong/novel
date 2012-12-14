#encoding: utf-8
class AuthorsController < ApplicationController

	def show
		@author = Author.find(params[:id])
		@books=Book.joins(:author).where(:authors =>{:name =>@author.name})

	end


end