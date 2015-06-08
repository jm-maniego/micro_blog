class TagsController < ApplicationController
  respond_to :json
  before_filter :set_post, only: [:index]

  def index
    respond_with @post.tags
  end
  
  def show
    respond_with Tag.find(params[:id])
  end 
  
  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
