local t = Def.ActorFrame {
	LoadActor("flash.png")..{
		InitCommand=function(self)
			self:x(97):y(320):blend('BlendMode_Add'):vertalign(bottom)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):sleep(.4):linear(1.5):diffusealpha(0)
		end;
	};
	LoadActor("Y_GRA.png")..{
		InitCommand=function(self)
			self:x(97):y(320):blend('BlendMode_Add'):vertalign(bottom)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:zoomtowidth(144):zoomy(0):diffusealpha(0):sleep(0):diffusealpha(1):linear(.05):zoomy(2):linear(0.4):zoomtowidth(2):linear(0.5):diffusealpha(0)
		end;
	};
	LoadActor("FLARE.png")..{
		InitCommand=function(self)
			self:x(99):y(320):blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:zoom(2):linear(1):diffusealpha(0)
		end;
	};
	LoadActor("mask.png")..{
		InitCommand=function(self)
			self:x(320):y(240):blend('BlendMode_NoEffect'):zwrite(1):clearzbuffer(1)
		end;
	};
	--Laser
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(85):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(105):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.1):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(80):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.3):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(115):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.4):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(90):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.5):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(40):blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.5):linear(0.5):y(-100)
		end;
	};
	LoadActor("laser.png")..{
		InitCommand=function(self)
			self:x(55):blend('BlendMode_Add'):ztest(1):diffusealpha(.8)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(1):y(600):sleep(0.7):linear(0.5):y(-100)
		end;
	};
	--Rush
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(10):y(340):diffusealpha(1):linear(1):y(300):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(45):y(280):diffusealpha(1):linear(.8):y(240):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(95):y(260):diffusealpha(1):linear(1):y(220):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(115):y(240):diffusealpha(1):linear(1):y(140):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(135):y(250):diffusealpha(1):linear(1):y(180):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(85):y(370):diffusealpha(1):linear(1):y(300):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(105):y(380):diffusealpha(1):linear(1.2):y(320):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(135):y(350):diffusealpha(1):linear(1.2):y(300):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(155):y(300):diffusealpha(0):sleep(0.4):linear(0.01):diffusealpha(1):linear(1.2):y(140):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(175):y(340):diffusealpha(0):sleep(0.3):linear(0.01):diffusealpha(1):linear(1.2):y(300):diffusealpha(0)
		end;
	};
	LoadActor("rush.png")..{
		InitCommand=function(self)
			self:diffuseshift():effectperiod(0.005):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0):blend('BlendMode_Add'):ztest(1)
		end;
		OffCommand=function(self)
			self:x(55):y(340):diffusealpha(0):sleep(0.2):linear(0.01):diffusealpha(1):linear(1.2):y(320):diffusealpha(0)
		end;
	};
	LoadActor("smoke.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:x(86):y(254):diffusealpha(0):linear(0.01):diffusealpha(1):linear(1.2):y(320):diffusealpha(0)
		end;
	};
	LoadActor("smoke.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:x(95):y(290):zoom(.6):diffusealpha(0):sleep(.2):linear(.5):diffusealpha(1):addy(-15):linear(.5):diffusealpha(0):addy(-15)
		end;
	};
	LoadActor("YAKE.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:x(88):y(256):diffusealpha(0):diffusealpha(.8):linear(2):diffusealpha(0)
		end;
	};
	LoadActor("FLINE.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:zoomtowidth(134):y(190):x(98):diffusealpha(0):sleep(2):diffusealpha(.4):linear(.8):diffusealpha(0)
		end;
	};
	LoadActor("fullcombo.png")..{
		InitCommand=function(self)
			self:ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:x(98):y(190):zoomx(10):zoomy(0):linear(.1):zoomy(1):zoomx(1):diffusealpha(1):sleep(1.8):linear(.1):zoomy(0)
		end;
	};
	LoadActor("fullcombo.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add')
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:x(98):y(190):diffusealpha(0):sleep(.2):diffusealpha(1):linear(.1):diffusealpha(0)
		end;
	};
	LoadActor("FLINE.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:y(178):x(-50):diffusealpha(0):sleep(.2):linear(.1):addx(140):diffusealpha(1):linear(.1):addx(140):diffusealpha(0)
		end;
	};
	LoadActor("FLINE.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):ztest(1)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:y(202):x(230):diffusealpha(0):sleep(.2):linear(.1):addx(-140):diffusealpha(1):linear(.1):addx(-140):diffusealpha(0)
		end;
	};
};
return t;