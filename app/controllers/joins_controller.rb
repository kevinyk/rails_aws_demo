class JoinsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @join = Join.new(user_id: current_user.id, event_id: params[:event_id])
    if @join.save
      redirect_to :back
    else
      flash[:errors] = @join.errors.full_messages
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    Join.find_by(user_id: current_user.id, event_id: params[:event_id]).destroy
    redirect_to :back
  end
end
