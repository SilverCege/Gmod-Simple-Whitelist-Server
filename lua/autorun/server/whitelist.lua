whitelist = true -- true to turn on and false to turn off the system
allowed = {
	[ "76561198012345678" ] = true, -- Me ==> can connect
	[ "76561198123456789" ] = true, -- Friend #1 ==> can connect
	[ "76561198234567890" ] = false, -- Friend #2 ==> can't connect
}

hook.Add( "PlayerInitialSpawn", "access_whitelist_player_connection", function(ply)
	local steamID = ply:SteamID64()
	if whitelist == true then
	if not allowed[ steamID ] then
		ply:Kick("You are not whitelisted")
	end
	end
end )
