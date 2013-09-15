if not wac then return end

ENT.Base 				= "wac_hc_base_u"
ENT.Type 				= "anim"

ENT.PrintName			= "UH-144 Falcon"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategoryU
ENT.Contact    			= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/HaloRoleplay/Vehicles/falcon.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/HaloRoleplay/Vehicles/Falcon/rotor.mdl"
ENT.BackRotorModel	= "models/HaloRoleplay/Vehicles/Falcon/rotor.mdl"
ENT.TopRotorDir        = 1
ENT.BackRotorDir	= 1
ENT.TopRotorPos	= Vector(10.47,136,135) 
ENT.BackRotorPos = Vector(10.47,-136,135)
ENT.EngineForce	= 26
ENT.Weight		= 47500
ENT.SmokePos		= Vector(-89.32,0,116.79)
ENT.FirePos		= Vector(-89.32,0,116.79)
ENT.TwinBladed = true

function ENT:AddSeatTable()
    return{
        [1]={
            Pos=Vector(115.55,0,37),
            ExitPos=Vector(115.55,80,10),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
		[2]={
            Pos=Vector(35.22,21.8,34.9),
            ExitPos=Vector(50,100,10),
			Ang=Angle(0,180,0),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
		[3]={
            Pos=Vector(35.22,-21.8,34.9),
            ExitPos=Vector(50,-100,10),
			Ang=Angle(0,180,0),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
		[4]={
            Pos=Vector(-39.98,-35,25),
            ExitPos=Vector(-50,-100,10),
			Ang=Angle(0,-90,0),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
		[5]={
            Pos=Vector(-39.98,35,25),
            ExitPos=Vector(-50,100,10),
			Ang=Angle(0,90,0),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
    }
end

function ENT:AddSounds()
	self.Sound={
		Start=CreateSound(self.Entity,"WAC/falcon/start.wav"),
		Blades=CreateSound(self.Entity,"Falcon.External"),
		Engine=CreateSound(self.Entity,"Falcon.Internal"),
		MissileAlert=CreateSound(self.Entity,"HelicopterVehicle/MissileNearby.mp3"),
		MissileShoot=CreateSound(self.Entity,"HelicopterVehicle/MissileShoot.mp3"),
		MinorAlarm=CreateSound(self.Entity,"WAC/Heli/fire_alarm_tank.wav"),
		LowHealth=CreateSound(self.Entity,"WAC/Heli/fire_alarm.wav"),
		CrashAlarm=CreateSound(self.Entity,"WAC/Heli/FireSmoke.wav"),
	}
end

function ENT:DrawPilotHud() end
function ENT:DrawWeaponSelection() end