class MicroBlog.Views.PostShow extends Backbone.View
  template: JST["posts/post_show"]
  initialize: ->
    @model.on('sync', @render, this)

  render: ->  
    @$el.html(@template(post: @model))
    this