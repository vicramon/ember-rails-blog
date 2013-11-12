App.Router.reopen
  location: 'hashbang'

App.Router.map ()->
  @resource 'posts', { path: '/' }
  @route 'about'
