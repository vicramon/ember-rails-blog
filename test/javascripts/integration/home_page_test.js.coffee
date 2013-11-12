module "Integration: Home Page",
  setup: ->
    Ember.run App, App.advanceReadiness
  teardown: ->
    App.reset()

test 'Header ok', ->
  visit('/').then ->
    ok exists("h1:contains('Vic on Ember')"), 'Main header ok'

test 'List of posts', ->
  visit('/').then ->
    ok exists(".post_item .title:contains('My cool post')"), 'Title ok'
    ok exists(".post_item .date:contains('January 1st, 2013')"), 'Date ok'
