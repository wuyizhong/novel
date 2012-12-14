# encoding: utf-8
class UsersController < ApplicationController
	def index
		@authors =Author.all
	end

	def register
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to @user
		else
			#redirect_to register_users_path
			render(:action => :register)
		end
	end

	def login
		#@user = User.new
		render :login
	end

	def signout
		expire_page :controller => :books, :action =>:index
		session[:user_id] = nil
		redirect_to books_path
	end

	def signin
		expire_page :controller => :books, :action =>:index
		@user = User.new(params[:user])

		@user = User.validate_loginx(@user.username,@user.password)
		if @user
			session[:user_id] = @user.id
			redirect_to books_path
		else
			#render(:action =>:login  ,:notice =>'用户名或者密码错误') 
			redirect_to login_users_path, :notice =>'用户名或者密码错误'
		end
	end
end
