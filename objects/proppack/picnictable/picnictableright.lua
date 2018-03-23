function update(dt)
	if matchingtable == nil then
		matchingtablelist = world.objectQuery({object.position()[1]-3,object.position()[2]},1)
		for i,j in ipairs(matchingtablelist) do
			if world.entityName(j) == "picnictableleft" then matchingtable = j end
		end
	end
end

function die()
	if matchingtable ~= nil then world.breakObject(matchingtable) end
end
