local t = Def.ActorFrame {
	LoadActor("model")..{
		OnCommand=function(self)
			self:visible(true)
		end;
		OffCommand=function(self)
			self:visible(false)
		end;
	};
	LoadActor("BGM (loop)")..{
		OffCommand=function(self)
			self:stop()
		end;
		OnCommand=function(self)
			self:play()
		end;
	};
	Def.Quad{
		OnCommand=function(self)
			self:blend('BlendMode_Add'):x(SCREEN_CENTER_X):y(SCREEN_BOTTOM):vertalign(bottom):zoomtowidth(SCREEN_WIDTH):zoomtoheight(32):diffuse(color("#000000"))
		end;
	};
	LoadActor("RED_LIGHT.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffuseshift():effectperiod(2):effectcolor1(1,1,1,1):effectcolor2(1,1,1,0.6)
		end;
	};
	LoadActor("BG_MODE.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):addx(-15):addy(-15):linear(0.5):addx(15):addy(15):diffusealpha(0.8)
		end;
	};
	LoadActor("UP_PARTS.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X-21):y(SCREEN_CENTER_Y-144)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):addy(400):sleep(0.1):linear(0.5):addy(-350):linear(0.15):addy(-50):linear(0.4):diffusealpha(0)
		end;
	};
	LoadActor("MOBG_FLASH1.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X-280):y(SCREEN_CENTER_Y-40)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):sleep(0.5):diffusealpha(0.7):sleep(0.1):diffusealpha(0)
		end;
	};
	LoadActor("MOBG_FLASH2.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X-1):y(SCREEN_CENTER_Y-79)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):sleep(0.55):diffusealpha(0.7):sleep(0.1):diffusealpha(0)
		end;
	};
	LoadActor("MOBG_FLASH3.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+23):y(SCREEN_CENTER_Y+44)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):sleep(0.6):diffusealpha(0.7):sleep(0.1):diffusealpha(0)
		end;
	};
	LoadActor("MODE_NAME_BG.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+62)
		end;
		OnCommand=function(self)
			self:blend('BlendMode_Add'):texcoordvelocity(-.1,0):zoomy(0):diffusealpha(0):sleep(0.2):linear(0.3):zoomy(1):diffusealpha(1)
		end;
	};
	LoadActor("MODE_INFO_WAKU.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+126)
		end;
		OnCommand=function(self)
			self:zoomy(0):sleep(0.5):linear(0.2):zoomy(1)
		end;
	};
};
return t;