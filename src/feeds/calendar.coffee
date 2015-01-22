flow = require 'flow'

flow.trigger 'calendar', ->
  info: """
    This is the calendar trigger endpoint.
  """
  params:
    data:
      type: 'object'
      required: true

flow.feed 'calendar', ->
  info: """
    This feed hooks up with the google calendar api and
  """
  , (emit) ->
    flow.hub.on 'calendar', emit
