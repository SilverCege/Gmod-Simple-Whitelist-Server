whitelist = false -- true to turn on and false to turn off the system
allowed = {
	[ "76561198012345678" ] = true, -- Me
	[ "76561198123456789" ] = true, -- Friend #1
	[ "76561198234567890" ] = true, -- Friend #2
	[ "76561198242989986" ] = false, -- Papi Caneton
}

hook.Add( "PlayerInitialSpawn", "access_whitelistppp", function(ply)
	local steamID = ply:SteamID64()
	if whitelist == true then
	if not allowed[ steamID ] then
		ply:Kick("Tu n'es pas whitelist\n\n            discord.gg/HqeQSaUgcB")
	end
	end
end )