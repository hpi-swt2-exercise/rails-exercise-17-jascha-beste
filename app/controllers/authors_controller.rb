class AuthorsController < ApplicationController
  # POST /authors/new
  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
    end

  end

  # GET /authors/
  def index
    @authors = Author.all
  end


  # PATCH /authors/1
  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  # DELETE /authors/1
  def destroy
    @authors = Authors.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end

  # GET /authors/1/edit
  def edit
    @author = Author.find(params[:id])
  end
  # GET /authors/new
  def new
    @author = Author.new
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