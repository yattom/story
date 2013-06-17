describe 'one scene story', ->
  it 'Old man and his wife lived together', ->
    scene = new Scene '$C1 and $C2 lived together'
    scene.populate 'C1', 'old man'
    scene.populate 'C2', 'his wife'
    expect(scene.describe()).toBe('Old man and his wife lived together')
