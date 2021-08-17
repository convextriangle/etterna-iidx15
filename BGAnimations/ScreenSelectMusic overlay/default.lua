return Def.ActorFrame {
	LoadActor(THEME:GetPathG("","_shared header"))..{
	},
	LoadActor(THEME:GetPathG("","_shared header/INFO_1"))..{
	},
	LoadActor("RED_LIGHT.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_TOP):vertalign(top):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):playcommand("Animate")
		end;
		AnimateCommand=function(self)
			self:blend('BlendMode_Add'):visible(false):linear(1):diffusealpha(0):linear(0):diffusealpha(1):queuecommand("Animate")
		end
	};
	LoadActor("MUSIC_T.png")..{
		InitCommand=function(self)
			self:x(WideScale(SCREEN_CENTER_X-245,SCREEN_CENTER_X-345)):y(SCREEN_CENTER_Y-214):visible(true)
		end;
		OnCommand=function(self)
			self:addx(-10):diffusealpha(0):sleep(0.5):linear(0.3):addx(10):diffusealpha(1)
		end;
	};
	LoadActor(THEME:GetPathG("","time"))..{
	};
	LoadActor(THEME:GetPathB("","active_line"))..{
		InitCommand=function(self)
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathG("","_shared header/here_or_not"))..{
	},
}