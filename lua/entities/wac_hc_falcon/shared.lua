if not wac then return end

ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"
ENT.PrintName			= "UH-144 Falcon"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategory
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/HaloRoleplay/Vehicles/falcon.mdl"
ENT.EngineForce	= 26
ENT.Weight		= 15000
ENT.SmokePos		= Vector(-89.32,0,116.79)
ENT.FirePos		= Vector(-89.32,0,116.79)

ENT.TopRotor = {
	dir = 1,
	pos = Vector(10.47,136,135),
	model = "models/HaloRoleplay/Vehicles/Falcon/rotor.mdl"
}

ENT.TopRotor2 = {
	dir = -1,
	pos = Vector(10.47,-136,135),
	angles = Angle(0,0,0),
	model = "models/HaloRoleplay/Vehicles/Falcon/rotor.mdl"
}

ENT.BackRotor = {
	dir = 1,
	pos = Vector(0,0,18),
	model = "models/props_junk/PopCan01a.mdl"
}

ENT.Seats = {
	{
		pos=Vector(115.55,0,37),
		exit=Vector(115.55,80,10),
	},
	{
		pos=Vector(35.22,21.8,34.9),
		exit=Vector(50,100,10),
		ang=Angle(0,180,0),
	},
	{
		pos=Vector(35.22,-21.8,34.9),
		exit=Vector(50,-100,10),
		ang=Angle(0,180,0),
	},
	{
		pos=Vector(-39.98,-35,25),
		exit=Vector(-50,-100,10),
		ang=Angle(0,-90,0),
	},
	{
		pos=Vector(-39.98,35,25),
		exit=Vector(-50,100,10),
		ang=Angle(0,90,0),
	},
}

ENT.Sounds = {
	Start="WAC/falcon/start.wav",
	Blades="WAC/falcon/external.wav",
	Engine="WAC/falcon/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav",
}

function ENT:DrawPilotHud() end
function ENT:DrawWeaponSelection() end