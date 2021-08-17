local t = Def.ActorFrame {
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