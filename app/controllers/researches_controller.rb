class ResearchesController < ApplicationController
  before_action :find_research, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index , :show]


  def index
    @researches = Research.all
  end

  def new
    @research = current_user.researches.build
  end

  def show
  end

  def create

      @research = current_user.researches.build(research_params)
      @comment.user_id = current_user.id

      if @research.save
        redirect_to research_index_path
      end

  end

  def edit

  end

  def update
    if @research.update(research_params)
      redirect_to research_index_path
    end
  end

  def destroy
    if @research.destroy
      redirect_to research_index_path
    end
  end

  private

  def research_params
    params.require(:research).permit(:title, :author, :contributor, :description, :callNo, :year, :research_img)
  end

  def find_research
    @research = Research.find(params[:id])
  end


end
