class MicroBlog.Models.Tag extends Backbone.Model
  idAttribute: "id"
  urlRoot: ->
    "/tags"
  defaults:
    posts: []
  initialize: ->
    self       = this;
    @posts     = new MicroBlog.Collections.Posts(@get('posts'))
    @posts.url = ->
      "#{self.url()}/posts"