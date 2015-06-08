class MicroBlog.Views.TagItem extends Backbone.View
  tagName: "li"
  template: JST['tags/tag_item']
  className: 'inline'
  render: ->
    @$el.html(@template(tag: @model))
    this