local module = {}

function module:CompileTranslation(id)
	return game.HttpService:JSONEncode(require(id))
end
return module
