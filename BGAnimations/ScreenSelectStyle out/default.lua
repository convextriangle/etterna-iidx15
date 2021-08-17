local t = Def.ActorFrame {
	LoadActor("out.ogg")..{
		OffCommand=function(self)
			self:play()
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT):diffuse(color("#000000"))
		end;
		OnCommand=function(self)
			self:diffusealpha(1)
		end;
	};
	-- [Layer1]
	LoadActor("PASSAGE.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):sleep(0.4):linear(1.6):diffusealpha(1)
		end;
	};
	-- [Layer5]
	LoadActor("left.png")..{
		InitCommand=function(self)
			self:x(WideScale(SCREEN_CENTER_X-320,SCREEN_CENTER_X-426)):y(SCREEN_CENTER_Y):horizalign(left):zoomx(SCREEN_WIDTH/640)
		end;
		OnCommand=function(self)
			self:sleep(0.2):linear(0.05):addy(-2):sleep(0.1):linear(0.05):addy(2):sleep(0.1):linear(3.4):addx(-320)
		end;
	};
	-- [Layer6]
	LoadActor("right.png")..{
		InitCommand=function(self)
			self:x(WideScale(SCREEN_CENTER_X+320,SCREEN_CENTER_X+426)):y(SCREEN_CENTER_Y):horizalign(right):zoomx(SCREEN_WIDTH/640)
		end;
		OnCommand=function(self)
			self:sleep(0.2):linear(0.05):addy(2):linear(0.05):addy(2):linear(0.05):addy(-2):linear(0.05):addy(-2):sleep(0.1):linear(3.4):addx(320)
		end;
	};
	-- [Layer9]
	LoadActor("OPERATION.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-13)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):cropright(1):sleep(0.1):linear(0.3):cropright(0):sleep(1):linear(0.3):y(240):diffusealpha(0)
		end;
	};
	-- [Layer10]
	LoadActor("TROOPERS.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+6)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):cropright(1):sleep(0.2):linear(0.3):cropright(0):sleep(.9):linear(0.3):y(240):diffusealpha(0)
		end;
	};
	-- [Layer11]
	LoadActor("STAND_BY.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+68)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):sleep(0.2):diffusealpha(1):diffuseblink():effectperiod(0.3):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):sleep(1.4):diffusealpha(0)
		end;
	};
	-- [Layer12]
	LoadActor("STAND_BY.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+68)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):sleep(1.6):diffusealpha(1)
		end;
	};
	-- [Layer13]
	LoadActor("GOOD_LUCK.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):cropright(1):sleep(1.5):linear(0.3):cropright(0)
		end;
	};
	LoadActor("SITE.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:zoom(0.95):diffusealpha(0):sleep(0.2):linear(0.1):zoom(1):diffusealpha(0.5)
		end;
	};
	-- [Layer20]
	Def.Quad{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT):diffuse(color("#ffffff"))
		end;
		OnCommand=function(self)
			self:linear(0.2):diffusealpha(0)
		end;
	};
	-- [Layer21]
	Def.Quad{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT):diffuse(color("#000000"))
		end;
		OnCommand=function(self)
			self:diffusealpha(0):sleep(2.4):linear(0.3):diffusealpha(1)
		end;
	};
};
return t