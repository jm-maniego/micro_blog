class MicroBlog.Routers.Tags extends Backbone.Router
  #routes:
  #  "tags/:tag_id/posts": "show_posts"
  #  
  #show_posts: (tag_id) ->
  #  @tag = new MicroBlog.Model.Tag(id: tag)
  #  @posts = @tag.posts
  #  @view = new MicroBlog.Views.PostIndex(collection: @tag)
  #  
  #  @tag.fetch(
  #    reset: true,
  #    success: ->
  #      $('#container').html(view.el)
  #  )