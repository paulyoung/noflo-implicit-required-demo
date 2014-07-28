{expect} = require 'chai'
noflo = require 'noflo'
Demo = require '../components/Demo'


describe 'Demo', ->

  component = null
  foo = null


  beforeEach ->
    component = Demo.getComponent()

    foo = noflo.internalSocket.createSocket()
    component.inPorts.foo.attach foo


  describe 'foo', ->

    it 'should be required', ->
      required = component.inPorts.foo.isRequired()
      expect(required).to.equal true
