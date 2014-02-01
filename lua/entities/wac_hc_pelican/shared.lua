if not wac then return end

ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"
ENT.PrintName			= "D77H-TCI Pelican"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategoryC
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/HaloRoleplay/Vehicles/pelican.mdl"
ENT.EngineForce	= 26
ENT.Weight		= 45000
ENT.SmokePos	= Vector(53.84,174.36,85.75)
ENT.FirePos		= Vector(53.84,174.36,85.75)

ENT.TopRotor = {
	dir = -1,
	pos = Vector(-37,2,200),
	model = "models/props_junk/PopCan01a.mdl"
}

ENT.BackRotor = {
	dir = -1,
	pos = Vector(-290.5,8,200),
	model =  "models/props_junk/PopCan01a.mdl"
}

ENT.Seats = {
	{
		pos=Vector(274.3,1.39,80),
		exit=Vector(274.3,130,10),
	},
	{
		pos=Vector(64,52.95,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,-90,0),
	},
	{
		pos=Vector(64,-50,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,90,0),
	},
	{
		pos=Vector(37.1,52.95,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,-90,0),
	},
	{
		pos=Vector(37.1,-50,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,90,0),
	},
	{
		pos=Vector(10.2,52.95,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,-90,0),
	},
	{
		pos=Vector(10.2,-50,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,90,0),
	},
	{
		pos=Vector(-17.2,52.95,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,-90,0),
	},
	{
		pos=Vector(-17.2,-50,70),
		exit=Vector(-197.37,0,8.93),
		ang=Angle(0,90,0),
	},
}

ENT.Sounds = {
	Start="WAC/pelican/start.wav",
	Blades="WAC/pelican/external.wav",
	Engine="WAC/pelican/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav",
}