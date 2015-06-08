class MicroBlog.Views.PostItem extends Backbone.View
  tagName: "li"
  template: JST['posts/post_item']
  className: 'post-item cf'
  render: ->
    #@model.tags.forEach((tag)->
    #  console.log(tag)
    #, this)
    @$el.html(@template(post: @model))
    @renderTags(@model)
    post_item_link = $('<a>', {
                       href: "/#/posts/#{@model.get('id')}"
                       class: "btn move-right"
                     }).text('View Post')
    @$el.append(post_item_link)
    post_item_link.wrap('<p>')
    this
  renderTags: (post_item) ->
    view = new MicroBlog.Views.PostTags(collection: post_item.tags);
    @$el.append(view.render().el)