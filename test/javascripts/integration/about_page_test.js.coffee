module "Integration: About Page",
  setup: ->
    Ember.run App, App.advanceReadiness
  teardown: ->
    App.reset()

test 'About page is present', ->
  visit('/about').then ->
    ok exists("h1:contains('About')"), "About header ok"
