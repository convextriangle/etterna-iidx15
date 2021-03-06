local t = Def.ActorFrame{
	LoadActor("FLARE.png")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-66):y(450):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):sleep(.3):diffusealpha(1):sleep(.05):linear(.05):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF2.png")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-70):y(440):blend('BlendMode_Add'):horizalign(right)
	end;
	OnCommand=function(self)
		self:rotationz(-30):zoom(.4):diffusealpha(0):sleep(.3):diffusealpha(1):linear(.1):y(430):zoom(.9):linear(.1):zoom(1):zoomx(1.4):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF2.png")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-70):y(440):blend('BlendMode_Add'):horizalign(right)
	end;
	OnCommand=function(self)
		self:rotationz(-30):zoom(.4):diffusealpha(0):sleep(.3):diffusealpha(1):linear(.1):y(430):zoom(.9):linear(.1):zoom(1):zoomx(1.4):diffusealpha(0)
	end;
	};
	--
	LoadActor("_HIBANA")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-84):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:y(433):addy(-5):addx(-280):sleep(.2):linear(.1):addx(180):linear(.05):addy(5):addx(20):linear(.1):addx(80):sleep(0):y(999)
	end;
	};
	LoadActor("P_SHOCK")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-84):y(433):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):zoom(.4):sleep(.40):diffusealpha(1):linear(.1):zoom(.9):linear(.05):zoom(1.5):diffusealpha(0)
	end;
	};
	LoadActor("P_SHOCK")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-84):y(433):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):zoom(.4):sleep(.40):diffusealpha(1):linear(.1):zoom(.9):linear(.05):zoom(1.5):diffusealpha(0)
	end;
	};
	--
	LoadActor("_HIBANA")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+84):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:y(433):addy(-5):addx(280):sleep(.2):linear(.1):addx(-180):linear(.05):addy(5):addx(-20):linear(.1):addx(-80):sleep(0):y(999)
	end;
	};
	LoadActor("P_SHOCK")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+84):y(433):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):zoom(.4):sleep(.40):diffusealpha(1):linear(.1):zoom(.9):linear(.05):zoom(1.5):diffusealpha(0)
	end;
	};
	LoadActor("P_SHOCK")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+84):y(433):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):zoom(.4):sleep(.40):diffusealpha(1):linear(.1):zoom(.9):linear(.05):zoom(1.5):diffusealpha(0)
	end;
	};
	--
	LoadActor("FLARE")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+64):y(450):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):sleep(.3):diffusealpha(1):sleep(.05):linear(.05):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF3")..{
	InitCommand=function(self)
		self:horizalign(left):x(SCREEN_CENTER_X+80):y(440):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:rotationz(30):zoom(.4):diffusealpha(0):sleep(.3):diffusealpha(1):linear(.1):y(430):zoom(.9):linear(.1):zoom(1):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF3")..{
	InitCommand=function(self)
		self:horizalign(left):x(SCREEN_CENTER_X+80):y(440):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:rotationz(30):zoom(.4):diffusealpha(0):sleep(.3):diffusealpha(1):linear(.1):y(430):zoom(.9):linear(.1):zoom(1):diffusealpha(0)
	end;
	};
	--
	LoadActor("FLARE")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X-75):y(27):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):sleep(.2):diffusealpha(1):sleep(.05):linear(.05):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF2")..{
	InitCommand=function(self)
		self:horizalign(left):x(SCREEN_CENTER_X-70):y(25):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:horizalign(right):rotationz(-30):zoom(.4):diffusealpha(0):sleep(.2):diffusealpha(1):linear(.1):y(15):zoom(.9):linear(.1):zoom(1):diffusealpha(0)
	end;
	};
	--
	LoadActor("FLARE")..{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+74):y(27):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:diffusealpha(0):sleep(.2):diffusealpha(1):sleep(.05):linear(.05):diffusealpha(0)
	end;
	};
	LoadActor("SPARK_EF3")..{
	InitCommand=function(self)
		self:horizalign(left):x(SCREEN_CENTER_X+80):y(25):blend('BlendMode_Add')
	end;
	OnCommand=function(self)
		self:horizalign(left):rotationz(30):zoom(.4):diffusealpha(0):sleep(.25):diffusealpha(1):linear(.1):y(15):zoom(.9):linear(.1):zoom(1):diffusealpha(0)
	end;
	};
};

return t;