describe 'TextCreator', ->
  it 'sentences start with capital', ->
    tc = new TextCreator
    tc.addSentence 'rain in spain falls mainly in plain.'
    expect(tc.generate()).toBe('Rain in spain falls mainly in plain.')
  it 'sentence ends in a period', ->
    tc = new TextCreator
    tc.addSentence 'Go'
    expect(tc.generate()).toBe('Go.')


describe 'one scene story', ->
  it 'Old man and his wife lived together', ->
    scene = new Scene '$C1 and $C2 lived together'
    scene.populate 'C1', 'old man'
    scene.populate 'C2', 'his wife'
    expect(scene.describe()).toBe('Old man and his wife lived together.')
