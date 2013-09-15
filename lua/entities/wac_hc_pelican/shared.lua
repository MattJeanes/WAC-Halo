if not wac then return end

ENT.Base 				= "wac_hc_base"
ENT.Type 				= "anim"

ENT.PrintName			= "D77H-TCI Pelican"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategory
ENT.Contact				= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/HaloRoleplay/Vehicles/pelican.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/props_junk/PopCan01a.mdl"
ENT.BackRotorModel	= "models/props_junk/PopCan01a.mdl"
ENT.TopRotorDir		= 1
ENT.BackRotorDir	= 1
ENT.TopRotorPos	= Vector(30,136,120)
ENT.BackRotorPos = Vector(30,-136,120)
ENT.EngineForce	= 26
ENT.Weight		= 47500
ENT.SmokePos		= Vector(53.84,174.36,85.75)
ENT.FirePos		= Vector(53.84,174.36,85.75)
ENT.TwinBladed = true

function ENT:AddSeatTable()
	return{
		[1]={
			Pos=Vector(274.3,1.39,80),
			ExitPos=Vector(274.3,130,10),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[2]={
			Pos=Vector(64,52.95,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,-90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[3]={
			Pos=Vector(64,-50,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[4]={
			Pos=Vector(37.1,52.95,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,-90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[5]={
			Pos=Vector(37.1,-50,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[6]={
			Pos=Vector(10.2,52.95,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,-90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[7]={
			Pos=Vector(10.2,-50,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[8]={
			Pos=Vector(-17.2,52.95,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,-90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
		[9]={
			Pos=Vector(-17.2,-50,70),
			ExitPos=Vector(-197.37,0,8.93),
			Ang=Angle(0,90,0),
			NoHud=true,
			wep={wac.aircraft.getWeapon("No Weapon")},
		},
	}
end

function ENT:AddSounds()
	self.Sound={
		Start=CreateSound(self.Entity,"WAC/pelican/start.wav"),
		Blades=CreateSound(self.Entity,"Pelican.External"),
		Engine=CreateSound(self.Entity,"Pelican.Internal"),
		MissileAlert=CreateSound(self.Entity,"HelicopterVehicle/MissileNearby.mp3"),
		MissileShoot=CreateSound(self.Entity,"HelicopterVehicle/MissileShoot.mp3"),
		MinorAlarm=CreateSound(self.Entity,"WAC/Heli/fire_alarm_tank.wav"),
		LowHealth=CreateSound(self.Entity,"WAC/Heli/fire_alarm.wav"),
		CrashAlarm=CreateSound(self.Entity,"WAC/Heli/FireSmoke.wav"),
	}
end