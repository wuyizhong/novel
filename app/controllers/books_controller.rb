#encoding: utf-8
class BooksController < ApplicationController
  # GET /books
  # GET /books.json
  caches_page :index

  def index
    #@bookgg=Book.all
    @books = Book.all
    @authors =Author.all 
    @book_month_counts = BookCount.order("day_counts desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
    @book_assess = BookAssess.new
    @book_assesses = BookAssess.where(:book_id => @book.id)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  def search
    @key = params[:keys]
    @books = Book.where("bookname like ?",'%'+params[:keys]+'%')
     
    if @books.exists?
    else
      flash[:notice] = 'sorry,查无此书！'
    end
  end

  def bookstype
    @books  = Book.find(params[:id])
    @bookstype = @books.tpye
    @books = Book.where("tpye = ?" ,@books.tpye)
    #@books = Book.where("tpye = ?" ,"武侠仙侠")
    #@books = Book.where("tpye = #{params[:key]}")
    render action: "books_classification"
  end

  def bookstypehead
    @books =Book.where(:tpye => params[:nam])
    @bookstype = @books.first.tpye
    render action: "books_classification"
  end

end
