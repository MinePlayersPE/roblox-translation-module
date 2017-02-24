--[[TODO]]--
local module = {}

function module:CompileTranslationScript(id)
	return game.HttpService:JSONEncode(require(id))
end
