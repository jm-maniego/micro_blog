class MicroBlog.Routers.Posts extends Backbone.Router
  routes:
    ""                   : "index"
    "posts/:id"          : "show"
    "tags/:tag_id/posts" : "index"
  start: ->
    Backbone.history.start(
      pushState: true
      )
  initialize: ->
  index: (tag_id) ->
    if typeof tag_id == 'undefined'
      @posts = new MicroBlog.Collections.Posts()
    else
      @tag   = new MicroBlog.Models.Tag(id: tag_id)
      @posts = @tag.posts
      @tag.fetch()
    
    view   = new MicroBlog.Views.PostsIndex(collection: @posts, tag: @tag)
    $('#content').html(view.el)
    @posts.fetch(
      data: {page: "1", per_page: "10"}
    )

  show: (id) ->
    @model = new MicroBlog.Models.Post(id: id)
    view   = new MicroBlog.Views.PostShow(model: @model)
    $('#container').html(view.el) 
    @model.fetch()