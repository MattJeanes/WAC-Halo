if not wac then return end

ENT.Base 				= "wac_hc_base_u"
ENT.Type 				= "anim"

ENT.PrintName			= "AV-14 Hornet"
ENT.Author				= "Dr. Matt"
ENT.Category			= wac.aircraft.spawnCategoryU
ENT.Contact    			= ""
ENT.Purpose 			= ""
ENT.Instructions 		= ""
ENT.Spawnable			= true
ENT.AdminSpawnable	= true

ENT.Model			= "models/Corra_Ashu/Halo_3/Vehicles/hornet_open.mdl"
ENT.RotorPhModel	= "models/props_junk/sawblade001a.mdl"
ENT.RotorModel		= "models/HaloRoleplay/Vehicles/Hornet/blades.mdl"
ENT.BackRotorModel	= "models/HaloRoleplay/Vehicles/Hornet/blades.mdl"
ENT.TopRotorDir        = 1
ENT.BackRotorDir	= 1
ENT.TopRotorPos	= Vector(10.47,107,55)
ENT.BackRotorPos = Vector(10.47,-107,55)
ENT.EngineForce	= 26
ENT.Weight		= 47500
ENT.SmokePos		= Vector(-15.37,0,-2.86)
ENT.FirePos		= Vector(-15.37,0,-2.86)
ENT.TwinBladed = true

function ENT:AddSeatTable()
    return{
        [1]={
            Pos=Vector(109.83,0,-30),
            ExitPos=Vector(115.55,90,-50),
            NoHud=true,
            wep={[1]=wac.aircraft.getWeapon("M134",{
		Name="M296",
		Ammo=500,
		MaxAmmo=500,
		NextShoot=1,
		LastShot=0,
		Gun=1,
		ShootDelay=0.04,
		ShootPos1=Vector(60,25,35),
		ShootPos2=Vector(60,-25,35),
		func=function(self, t, p)
			if t.NextShoot <= CurTime() then
				if t.Ammo>0 then
					if !t.Shooting then
						t.Shooting=true
						t.SStop:Stop()
						t.SShoot:Play()
					end
					local bullet={}
					bullet.Num 		= 1
					bullet.Src 		= self:LocalToWorld(t.Gun==1 and t.ShootPos1 or t.ShootPos2)
					bullet.Dir 		= self:GetForward()
					bullet.Spread 	= Vector(0.023,0.023,0)
					bullet.Tracer		= 0
					bullet.Force		= 10
					bullet.Damage	= 80
					bullet.Attacker 	= p
					local effectdata=EffectData()
					effectdata:SetOrigin(bullet.Src)
					effectdata:SetAngles(self:GetAngles())
					effectdata:SetScale(1.5)
					util.Effect("MuzzleEffect", effectdata)
					self.Entity:FireBullets(bullet)
					t.Gun=(t.Gun==1 and 2 or 1)
					t.Ammo=t.Ammo-1
					t.LastShot=CurTime()
					t.NextShoot=t.LastShot+t.ShootDelay
					local ph=self:GetPhysicsObject()
					if ph:IsValid() then
						ph:AddAngleVelocity(Vector(0,0,t.Gun==1 and 3 or -3))
					end
				end
				if t.Ammo<=0 then
					t.StopSounds(self,t,p)
					t.Ammo=t.MaxAmmo
					t.NextShoot=CurTime()+60
				end
			end
		end,
		StopSounds=function(self,t,p)
			if t.Shooting then
				t.SShoot:Stop()
				t.SStop:Play()
				t.Shooting=false
			end
		end,
		Init=function(self,t)
			t.SShoot=CreateSound(self,"WAC/cannon/gau21_fire_2.wav")
			t.SStop=CreateSound(self,"WAC/cannon/gau21_fire_3.wav")
		end,
		Think=function(self,t,p)
			if t.NextShoot<=CurTime() then
				t.StopSounds(self,t,p)
			end
		end,
		DeSelect=function(self,t,p)
			t.StopSounds(self,t,p)
		end
			}),
				[2]=wac.aircraft.getWeapon("Hydra 70",{
					Ammo=12,
					MaxAmmo=12,
					ShootPos={
						[1]=Vector(45,30,-55),
						[2]=Vector(45,-30,-55),
					}
				}),
			},
		},
		[2]={
            Pos=Vector(65,35,-50),
			Ang=Angle(0,70,0),
            ExitPos=Vector(115.55,90,-50),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
		
		[3]={
            Pos=Vector(65,-35,-50),
			Ang=Angle(0,-70,0),
            ExitPos=Vector(115.55,-90,-50),
            NoHud=true,
            wep={wac.aircraft.getWeapon("No Weapon")},
        },
    }
end

function ENT:AddSounds()
	self.Sound={
		Start=CreateSound(self.Entity,"WAC/hornet/start.wav"),
		Blades=CreateSound(self.Entity,"Hornet.External"),
		Engine=CreateSound(self.Entity,"Hornet.Internal"),
		MissileAlert=CreateSound(self.Entity,"HelicopterVehicle/MissileNearby.mp3"),
		MissileShoot=CreateSound(self.Entity,"HelicopterVehicle/MissileShoot.mp3"),
		MinorAlarm=CreateSound(self.Entity,"WAC/Heli/fire_alarm_tank.wav"),
		LowHealth=CreateSound(self.Entity,"WAC/Heli/fire_alarm.wav"),
		CrashAlarm=CreateSound(self.Entity,"WAC/Heli/FireSmoke.wav"),
	}
end