class MicroBlog.Views.PostsIndex extends Backbone.View
  tagName: 'ul'
  template: JST['posts/index']
  initialize: ->
    @tag = @options.tag
    $('#tag_name').empty()
    @collection.on('sync', @render, this)
    @tag && @tag.on('sync', @renderTagName, this)
    

  render: ->
    @collection.forEach(@addOne, this)
    this
  
  addOne: (post_item) ->
    post_item_view = new MicroBlog.Views.PostItem(model: post_item)
    @$el.append(post_item_view.render().el)

  renderTagName: ->
    $('#tag_name').text("##{@tag.get('name')}")