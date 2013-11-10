App.User = DS.Model.extend
  firstName: DS.attr('string')
  lastName: DS.attr('string')
  posts: DS.hasMany('post')
