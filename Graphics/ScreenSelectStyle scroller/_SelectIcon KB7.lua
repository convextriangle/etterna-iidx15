local t = Def.ActorFrame {
	LoadActor("KB7.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-16)
		end;
		OnCommand=function(self)
			self:zoom(0):bounceend(0.35):zoom(1)
		end;
	};
	LoadActor("cursor.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):x(SCREEN_CENTER_X-1):y(SCREEN_CENTER_Y-16)
		end;
		OnCommand=function(self)
			self:zoom(0):bounceend(0.35):zoom(1)
		end;
	};
};

return t;