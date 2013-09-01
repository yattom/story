class TextCreator
  addSentence: (sentence) ->
    @sentence = sentence
    this

  generate: ->
    s = @sentence[0].toUpperCase() + @sentence.substr(1)
    if s[s.length - 1] != '.'
      s = s + '.'
    s

class Scene
  constructor: (@description) ->
    @roles = {}

  populate: (role, cast) ->
    @roles[role] = cast

  describe: ->
    desc = @description
    for role, cast of @roles
      desc = desc.replace('$' + role, cast)
    new TextCreator().addSentence(desc).generate()
