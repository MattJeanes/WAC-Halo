include("shared.lua")
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) then return end
	local ent=ents.Create(ClassName)
	ent:SetPos(tr.HitPos+tr.HitNormal*5)
	ent:Spawn()
	ent:Activate()
	ent.Owner=ply	
	self.Sounds=table.Copy(sndt)
	return ent
end