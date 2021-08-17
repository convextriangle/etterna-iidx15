local t = Def.ActorFrame {
	LoadActor("texture/_free.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+65)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(0):sleep(.48):diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
	};
Def.Sprite {
		Texture="_free 1x16.png";
			Frame0000=0;
			Delay0000=0.03;
			Frame0001=1;
			Delay0001=0.03;
			Frame0002=2;
			Delay0002=0.03;
			Frame0003=3;
			Delay0003=0.03;
			Frame0004=4;
			Delay0004=0.03;
			Frame0005=5;
			Delay0005=0.03;
			Frame0006=6;
			Delay0006=0.03;
			Frame0007=7;
			Delay0007=0.03;
			Frame0008=8;
			Delay0008=0.03;
			Frame0009=9;
			Delay0009=0.03;
			Frame0010=10;
			Delay0010=0.03;
			Frame0011=11;
			Delay0011=0.03;
			Frame0012=12;
			Delay0012=0.03;
			Frame0013=13;
			Delay0013=0.03;
			Frame0014=14;
			Delay0014=0.03;
			Frame0015=15;
			Delay0015=0.03;
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+65)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():loop(0):diffusealpha(1):setstate(0):sleep(self:GetAnimationLengthSeconds()):diffusealpha(0)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
	};
	LoadActor("texture/style2.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+240):y(SCREEN_CENTER_Y-88)
		end;
		OnCommand=function(self)
			self:vertalign(top):zoomy(100):diffusealpha(0):sleep(0.65):diffusealpha(1):linear(0.1):zoomy(1)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(1)
		end;
	};
	LoadActor("texture/style1.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+240):y(SCREEN_CENTER_Y-136)
		end;
		OnCommand=function(self)
			self:vertalign(top):zoomy(100):diffusealpha(0):sleep(0.65):diffusealpha(1):linear(0.1):zoomy(1)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1):linear(0.1):y(SCREEN_CENTER_Y-131)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(1):linear(0.1):y(SCREEN_CENTER_Y-136)
		end;
	};
	LoadActor("texture/style3.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+240):y(SCREEN_CENTER_Y-48)
		end;
		OnCommand=function(self)
			self:vertalign(top):zoomy(100):diffusealpha(0):sleep(0.65):diffusealpha(1):linear(0.1):zoomy(1)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1):linear(0.1):y(SCREEN_CENTER_Y-53)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(1):linear(0.1):y(SCREEN_CENTER_Y-48)
		end;
	};
	LoadActor("texture/style4.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+240):y(SCREEN_CENTER_Y-48)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:diffusealpha(0):linear(0.1):diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:diffusealpha(0)
		end;
	};
	LoadActor("texture/style5.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+241):y(SCREEN_CENTER_Y-48)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):linear(0.1):diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:diffusealpha(0)
		end;
	};
	LoadActor("texture/MINI_DECIDE.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+224):y(SCREEN_CENTER_Y-16)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1):cropright(1):linear(0.2):cropright(0)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
	};
	LoadActor("texture/free-info.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+130)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(0):y(SCREEN_CENTER_Y+125):linear(.2):y(SCREEN_CENTER_Y+130):diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
	};
	LoadActor("texture/free-info.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+130)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(0):sleep(.2):diffusealpha(1):linear(.05):diffusealpha(0):linear(.05):diffusealpha(1):linear(.05):diffusealpha(0)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
	};
	LoadActor("texture/free-name.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+239):y(SCREEN_CENTER_Y-64)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):sleep(.75):diffusealpha(1)
		end;
		OffCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(1)
		end;
	};
	--DECIDE--
	LoadActor("_decide")..{
	};
	LoadActor("texture/free.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffFocusedCommand=function(self)
			self:diffusealpha(0.8):zoom(3):linear(.2):zoom(2):linear(0.15):zoom(1)
		end;
	};
	LoadActor("texture/free-blend.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-5)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffFocusedCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0.6):zoomy(0):sleep(0.6):linear(0.2):zoomy(1):sleep(1.4):linear(0.3):diffusealpha(0)
		end;
	};
	LoadActor("texture/free-stroke.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-5)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffFocusedCommand=function(self)
			self:blend('BlendMode_Add'):zoom(.6):diffusealpha(0):sleep(.2):diffusealpha(1):linear(.3):zoom(1.8):diffusealpha(0)
		end;
	};
};

return t;