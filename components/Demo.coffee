{Component, helpers, InPorts, OutPorts} = require 'noflo'


class Demo extends Component

  constructor: ->
    @inPorts = new InPorts
      foo:
        datatype: 'all'
        required: false

    @outPorts = new OutPorts
      bar:
        datatype: 'all'


module.exports =
  getComponent: ->
    component = new Demo

    config =
      in: [
        'foo'
      ]
      out: 'bar'

    helpers.WirePattern component, config, (data, groups, outPort) ->
      outPort.send data.foo

    return component

