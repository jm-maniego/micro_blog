class MicroBlog.Views.PostTags extends Backbone.View
  tagName: "ul"
  template: JST['tags/tag_item']
  render: ->
    @collection.forEach(@addOne, this)
    this
  addOne: (tag_item)->
    view = new MicroBlog.Views.TagItem(model: tag_item)
    @$el.append(view.render().el)