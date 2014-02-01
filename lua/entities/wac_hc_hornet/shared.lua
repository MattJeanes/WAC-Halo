if not wac then return end

ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"
ENT.PrintName			= "AV-14 Hornet"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategoryC
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/Corra_Ashu/Halo_3/Vehicles/hornet_open.mdl"
ENT.EngineForce	= 26
ENT.Weight		= 10000
ENT.SmokePos		= Vector(-15.37,0,-2.86)
ENT.FirePos		= Vector(-15.37,0,-2.86)

ENT.TopRotor = {
	dir = 1,
	pos = Vector(10.47,107,55),
	model = "models/HaloRoleplay/Vehicles/Hornet/blades.mdl"
}

ENT.TopRotor2 = {
	dir = -1,
	pos = Vector(10.47,-107,55),
	angles = Angle(0,0,0),
	model = "models/HaloRoleplay/Vehicles/Hornet/blades.mdl"
}

ENT.BackRotor = {
	dir = 1,
	pos = Vector(0,0,0),
	model = "models/props_junk/PopCan01a.mdl"
}

ENT.Seats = {
	{
		pos=Vector(109.83,0,-30),
		exit=Vector(115.55,90,-50),
		weapons={"M134", "Hydra 70"}
	},
	{
		pos=Vector(65,35,-50),
		ang=Angle(0,70,0),
		exit=Vector(115.55,90,-50),
	},
		
	{
		pos=Vector(65,-35,-50),
		ang=Angle(0,-70,0),
		exit=Vector(115.55,-90,-50),
	},
}

ENT.Weapons = {
	["M134"] = {
		class = "wac_pod_gatling",
		info = {
			Pods = {
				Vector(90,25,35),
				Vector(90,-25,35),
			},
		}
	},
	["Hydra 70"] = {
		class = "wac_pod_hydra",
		info = {
			Pods = {
				Vector(45,30,-55),
				Vector(45,-30,-55),
				Sequential = false,
			},
		}
	}
}

ENT.Sounds = {
	Start="WAC/hornet/start.wav",
	Blades="WAC/hornet/external.wav",
	Engine="WAC/hornet/internal.wav",
	MissileAlert="HelicopterVehicle/MissileNearby.mp3",
	MissileShoot="HelicopterVehicle/MissileShoot.mp3",
	MinorAlarm="WAC/Heli/fire_alarm_tank.wav",
	LowHealth="WAC/Heli/fire_alarm.wav",
	CrashAlarm="WAC/Heli/FireSmoke.wav",
}