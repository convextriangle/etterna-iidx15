local t = Def.ActorFrame {
	InitCommand=function(self)
		self:fov(120):addy(100)
	end,
	LoadActor("box.txt")..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-200):zoom(300):rotationx(70):addz(90)
		end;
	};
	LoadActor("gate.txt")..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-100):zoom(300):rotationx(70):addz(-180)
		end;
	};
};
return t;