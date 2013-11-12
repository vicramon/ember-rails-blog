App.Post = DS.Model.extend
  title: DS.attr('string')
  text: DS.attr('string')
  publishedAt: DS.attr('date')
  user: DS.belongsTo('user')

  prettyPublishedAt: ( ->
    moment(@get('publishedAt')).format("MMMM Do, YYYY")
  ).property('publishedAt')
