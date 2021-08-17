local t = Def.ActorFrame {
	InitCommand=function(self)
		self:fov(110):addy(360)
	end,
	LoadActor("_white.png")..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
	};
	LoadActor("box.txt")..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-380):zoomz(3):zoom(300):rotationx(50):rotationy(90):addz(380)
		end;
	};
	LoadActor("gate.txt")..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-60):zoomz(3):zoom(300):rotationx(50):rotationy(90):addz(-20)
		end;
	};
};
return t;