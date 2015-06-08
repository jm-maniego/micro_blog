class PostsController < ApplicationController
  respond_to :json

  def index
    paginate_params = params.slice(:per_page, :page)

    if params[:tag_id]
      tag = Tag.find(params[:tag_id])
      posts = tag.posts.paginate(paginate_params)
    else
      posts = Post.paginate(paginate_params)
      count = posts.count
    end

    respond_with(
         posts: posts.includes(:tags).as_json(include: :tags),
         total: count,
          page: params[:page],
      per_page: params[:per_page] || 10
    )
  end

  def show
    respond_with Post.find(params[:id])
  end
end
