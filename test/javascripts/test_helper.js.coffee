#= require application
#= require_tree .
#= require_self

document.write("<div id=\"ember-testing-container\"><div id=\"ember-testing\">" + "</div></div>")
document.write("<style>#ember-testing-container { position: absolute; " +
  "background: white; bottom: 0; right: 0; width: 650px; height: 400px; " +
  "overflow: auto; z-index: 9999; border: 1px solid #ccc; } " +
  "#ember-testing { zoom: 50%; }</style>")

Em.set('App.rootElement', "#ember-testing")
App.setupForTesting()
App.injectTestHelpers()

App.ApplicationAdapter =  DS.FixtureAdapter.extend()

@exists = (selector) ->
  !!find(selector).length

App.Post.FIXTURES = [
  id: 1
  title: 'My cool post'
  text: 'So, about Ember'
  publishedAt: new Date(2013, 0, 1)
]
