include('shared.lua')

ENT.thirdPerson = {
	distance = 750,
	angle=10
}

// heatwave
local cureffect=0
function ENT:Think()
	self.BaseClass.Think(self)
	local throttle = self:GetNWFloat("up", 0)
	local active = self:GetNWBool("active", false)
	local ent=LocalPlayer():GetVehicle():GetNWEntity("wac_aircraft")
	if active and throttle>0 and CurTime()>cureffect then
		cureffect=CurTime()+0.1
		
		local ed=EffectData()
		ed:SetEntity(self)
		ed:SetOrigin(Vector(57.72,185,78.41)) // offset
		ed:SetMagnitude(throttle)
		ed:SetRadius(15)
		util.Effect("wac_halo_effect", ed)
		
		local ed=EffectData()
		ed:SetEntity(self)
		ed:SetOrigin(Vector(57.72,-185,78.41)) // offset
		ed:SetMagnitude(throttle)
		ed:SetRadius(15)
		util.Effect("wac_halo_effect", ed)
		
		local ed=EffectData()
		ed:SetEntity(self)
		ed:SetOrigin(Vector(-409.43,120,200)) // offset
		ed:SetMagnitude(throttle)
		ed:SetRadius(15)
		util.Effect("wac_halo_effect", ed)
		
		local ed=EffectData()
		ed:SetEntity(self)
		ed:SetOrigin(Vector(-409.43,-120,200)) // offset
		ed:SetMagnitude(throttle)
		ed:SetRadius(15)
		util.Effect("wac_halo_effect", ed)		

	end
end