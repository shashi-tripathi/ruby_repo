class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    respond_to do |format|
      format.html { redirect_to Book.last, notice: 'User was successfully created.' }
      format.json { 
        flash.now[:notice] = "Book has been create successfully!!!"
      }
    end
  end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :category, :description, :langauge, :grade, :subject, :media_type, :address)
    end
end
