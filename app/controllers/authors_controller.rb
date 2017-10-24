class AuthorsController < ApplicationController
  # POST /authors/new
  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to @author
  end

  # GET /authors/
  def index
  end

  # GET /authors/new
  def new
  end

  # GET /authors/1
  def show
    @author = Author.find params[:id]
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :homepage)
  end
end