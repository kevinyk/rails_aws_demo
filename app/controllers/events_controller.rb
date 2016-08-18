class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to :back
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @event = Event.find(params[:id])
    @host = User.find_by(id: @event.user_id)
    @comments = Comment.where(event_id: @event.id)
    @users_joined = Join.users_joined(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :state, :user_id)
    end
end
