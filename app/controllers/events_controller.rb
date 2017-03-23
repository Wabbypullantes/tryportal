class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index , :show]
  def index
    @events = Event.all
  end

  def eventlist
    @events = Event.all
  end

  def new
    @events = current_user.events.build
  end

  def show

  end


  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to event_index_path
    end

  end

  def update

    if @event.update(event_params)
      redirect_to event_index_path
    end

  end

  def destroy

    if @event.destroy
      redirect_to event_index_path
    end

  end

    def search
    q = params[:q]
    @search = Event.search(event_name_cont: q).result
    @researches = Research.search(title_cont: q).result
    @professors = Professor.search(name_cont: q).result
    @subjects = Subject.search(subject_title_cont: q).result
    @key = q
    end



  private

  def event_params
    params.require(:event).permit(:event_name, :event_description, :event_date, :event_venue, :event_img)
  end

  def find_event
    @event = Event.find(params[:id])
  end


end
