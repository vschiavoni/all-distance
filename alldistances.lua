dofile("it-2004.sites.gpscoords-0_65039.lua")
dofile("it-2004.sites.gpscoords-65040_132020.lua")
dofile("it-2004.sites.gpscoords-132021_141252.lua")
local entries=#sites
for i=1,entries do
	print(i)
	local i_dist={}
	local c_i=1 --index for the current column
	if sites[i]~=nil then
		local sites_i_1 = sites[i][1]
		local sites_i_2 = sites[i][2]
		for j=1,entries do
			local sites_j = sites[j] 
			if sites_j ~=nil then
				i_dist[c_i]= 1 
			else
				i_dist[c_i]= -1
			end
			c_i=c_i+1
		end
	end
end
