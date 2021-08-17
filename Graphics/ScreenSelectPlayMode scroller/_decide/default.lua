local t = Def.ActorFrame {
	LoadActor("_mode decide")..{
		OnCommand=function(self)
			self:visible(false):pause()
		end;
		OffFocusedCommand=function(self)
			self:visible(true):play()
		end;
	};
	LoadActor("DECIDE_GLOW.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(356)
		end;
		OnCommand=function(self)
			self:visible(false)
		end;
		OffFocusedCommand=function(self)
			self:visible(true):blend('BlendMode_Add'):addx(-200):diffusealpha(0):sleep(.8):linear(.25):addx(200):diffusealpha(1):linear(.25):addx(200):diffusealpha(0)
		end;
	};
	LoadActor("DECIDE_GLOW.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y)
		end;
		OnCommand=function(self)
			self:visible(false)
		end;
		OffFocusedCommand=function(self)
			self:visible(true):blend('BlendMode_Add'):zoom(1.2):linear(0.4):zoom(0.8):diffusealpha(0)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT):diffuse(color("#ffffff"))
		end;
		OnCommand=function(self)
			self:visible(false)
		end;
		OffFocusedCommand=function(self)
			self:visible(true):diffuse(0,0,0,1):diffusealpha(0):sleep(2.4):linear(.3):diffusealpha(1)
		end;
	};
};
return t;