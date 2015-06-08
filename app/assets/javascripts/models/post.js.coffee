class MicroBlog.Models.Post extends Backbone.Model
  urlRoot: ->
    "/posts"
  defaults:
    tags: []
  initialize: ->
    self      = this;
    @tags     = new MicroBlog.Collections.Tags(@get('tags'))
    @tags.url = ->
      "#{self.url()}/tags"