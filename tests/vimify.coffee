assert = require 'assert'
vimify = require '../src/vimify'

describe 'vimify', ->
  it 'should run without errors', (done) ->
    vimify 'x = (y) -> y', 'coffee', (err, style, html) ->
      assert.equal err, null
      assert.equal typeof style, 'string'
      assert.equal typeof html, 'string'
      do done