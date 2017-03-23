class SubjectsController < ApplicationController
  before_action :find_subj, only: [:show, :destroy, :edit, :update]
  before_action :authenticate_user!, except: [:index , :show]

  def index
    @subjects = Subject.all
  end

  def new
    @subject = current_user.subjects.build
    @subjectss = Subject.new
  end

  def create
    @subject = current_user.subjects.build(subj_params)

    if @subject.save
      redirect_to subject_index_path
    end
  end

  def edit
    
  end

  def destroy

    if @subject.destroy
      redirect_to subject_index_path
    end
  end

  def update

    if @subject.update(subj_params)
      redirect_to subject_index_path
    end
    
  end

  



  private

  def subj_params
     params.require(:subjects).permit(:subject_code, :subject_title, :units, :lec_units, :lec_labs, :course_description)
  end

  def find_subj
    @subject = Subject.find(params[:id])
  end
end
