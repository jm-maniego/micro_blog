class MicroBlog.Collections.Posts extends Backbone.Collection
  url: ->
    "/posts"
  model: MicroBlog.Models.Post
  parse: (response) ->
    response          = response.posts
    response.per_page = @per_page
    response.page     = @page
    response.total    = @total
    return response