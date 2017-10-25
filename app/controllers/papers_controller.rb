class PapersController < ApplicationController
  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(paper_params)

    if @paper.save
      redirect_to @paper
    else
      render 'new'
    end
  end
  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])

    if @paper.update(paper_params)
      redirect_to @paper
    else
      render 'edit'
    end
  end

  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find params[:id]
  end

  def paper_params
    params.require(:paper).permit(:title, :venue, :year)
  end
end