--[[
	Language Translation Query
--]]
local module = {}
function module:ConnectToServer(url)
	if type(url) == "string" then
		if string.sub(url, #url, #url) == "/" then
			succ = pcall(game.HttpService:GetAsync(url .. "conntest.php"))
		else
			succ = pcall(game.HttpService:GetAsync(url .. "/conntest.php"))
		end
	end
	if succ then
		return "ObjectThatRepresentsServerConnection"
	else
		return nil
	end
end
return module
