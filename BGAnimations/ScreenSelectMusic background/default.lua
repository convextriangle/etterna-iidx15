local bgmPref = GetUserPref("IIDX15BGM");
local t = Def.ActorFrame {
	LoadActor("mm/" ..bgmPref)..{
		OnCommand=function(self)
			self:play()
		end;
		OffCommand=function(self)
			self:stop()
		end;
	};
	LoadActor("_mselect")..{
		InitCommand=function(self)
			self:visible(true)
		end;
	};
	
	LoadActor("bg.lua")..{
		InitCommand=function(self)
			self:zoomx(SCREEN_WIDTH/640)
		end;
	};
};
return t;