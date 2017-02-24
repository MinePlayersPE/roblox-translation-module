--[[
	Language Translation Script Query
--]]
local module = {}
local function AddConnectionObject(url)
	local m = {}
	function m:QueryTranslationScript(s)
		if type(s) == "string" then
			local succ, d = pcall(game.HttpService:GetAsync(url .. s))
			if succ then
				return "ObjectThatRepresentsQueriedJSON"
			end
		end
	end
end
function module:ConnectToServer(url)
	if type(url) == "string" then
		if string.sub(url, #url, #url) == "/" then
			noslash = true
			succ = pcall(game.HttpService:GetAsync(url .. "conntest.php"))
		else
			noslash = false
			succ = pcall(game.HttpService:GetAsync(url .. "/conntest.php"))
		end
	end
	if succ then
		return AddConnectionObject(url)
	else
		error("HttpService errors out.")
	end
end
return module
