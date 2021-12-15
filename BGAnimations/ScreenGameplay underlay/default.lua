local framePref = GetUserPref("IIDX15Frame");
local t = Def.ActorFrame{
	--[[LoadActor(framePref)..{
		InitCommand=function(self)
			self:zoomx(SCREEN_WIDTH/640)
		end;
		Condition=GAMESTATE:GetCurrentGame():GetName() == "beat";
	};
	LoadActor("_ddr") .. {
		InitCommand=function(self)
			self:zoomx(SCREEN_WIDTH/640)
		end;
		Condition=GAMESTATE:GetCurrentGame():GetName() ~= "beat";
	};]]
};

return t;
