window.MicroBlog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    window.MicroBlogRouter = new MicroBlog.Routers.Posts()
    window.MicroBlogRouter.start()

$(document).ready ->
  MicroBlog.initialize()
