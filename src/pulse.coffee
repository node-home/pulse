# events = require 'events'
googleapis = require 'googleapis'
home       = require 'home'

core       = require './core'

events =
  EventEmitter: require('eventemitter2').EventEmitter2

module.exports = home.app module,
  name: "Pulse"
  info: """
    The schedule of home.
  """
, (app) ->
  app.calendar = new core.Calendar [
    process.env.GOOGLE_CLIENT_ID
    process.env.GOOGLE_CLIENT_SECRET
    process.env.GOOGLE_CLIENT_REDIRECT_URL
  ]...

  # TODO load all flow sinks and connect them to the flow feed
