class MicroBlog.Collections.Tags extends Backbone.Collection
  model: MicroBlog.Models.Tag
  comparator: 'name'
  url: ->
    "/tags"