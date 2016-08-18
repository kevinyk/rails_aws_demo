class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      flash[:errors] = @comment.errors.full_messages
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
  end
  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :event_id)
    end
end
