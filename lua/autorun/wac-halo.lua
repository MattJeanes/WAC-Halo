if SERVER then AddCSLuaFile() end

local found=false
local f=file.Find('wac/*.lua', "LUA")
for k,v in pairs(f) do
	if v=="aircraft.lua" then
		include('wac/aircraft.lua')
		found=true
	end
end

timer.Simple(5,function()
	if not found and not WACFrame then
		if CLIENT then
			WACFrame=vgui.Create('DFrame')
			WACFrame:SetTitle("WAC is not installed")
			WACFrame:SetSize(ScrW()*0.95, ScrH()*0.95)
			WACFrame:SetPos((ScrW() - WACFrame:GetWide()) / 2, (ScrH() - WACFrame:GetTall()) / 2)
			WACFrame:MakePopup()
			
			local h=vgui.Create('DHTML')
			h:SetParent(WACFrame)
			h:SetPos(WACFrame:GetWide()*0.005, WACFrame:GetTall()*0.03)
			local x,y = WACFrame:GetSize()
			h:SetSize(x*0.99,y*0.96)
			h:SetAllowLua(true)
			h:OpenURL('http://mattjeanes.com/abyss/wac-warning.html')
		elseif SERVER then
			timer.Create("WAC-NotInstalled", 10, 0, function() print("WAC Aircraft is not installed!") end)
		end
	end
end)

if not found then return end

if wac and wac.aircraft then wac.aircraft.spawnCategoryU = "WAC Unbreakable" end

sound.Add(
{
	name = "Pelican.External",
	channel = CHAN_STATIC,
	soundlevel = 180,
	sound = "WAC/pelican/external.wav"
})

sound.Add(
{
	name = "Pelican.Internal",
	channel = CHAN_STATIC,
	soundlevel = 100,
	sound = "WAC/pelican/internal.wav"
})

sound.Add(
{
	name = "Falcon.External",
	channel = CHAN_STATIC,
	soundlevel = 110,
	sound = "WAC/falcon/external.wav"
})

sound.Add(
{
	name = "Falcon.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "WAC/falcon/internal.wav"
})

sound.Add(
{
	name = "Hornet.External",
	channel = CHAN_STATIC,
	soundlevel = 110,
	sound = "WAC/hornet/external.wav"
})

sound.Add(
{
	name = "Hornet.Internal",
	channel = CHAN_STATIC,
	soundlevel = 60,
	sound = "WAC/hornet/internal.wav"
})