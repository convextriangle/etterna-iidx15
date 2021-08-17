local t = Def.ActorFrame {
	LoadActor("7keys.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+125):y(SCREEN_CENTER_Y-16):visible(GAMESTATE:GetCurrentGame():GetName() == "beat")
		end;
		OnCommand=function(self)
			self:addx(SCREEN_WIDTH/2):linear(0.3):addx(-SCREEN_WIDTH/2)
		end;
		GainFocusCommand=function(self)
			self:stoptweening()
		end;
		LoseFocusCommand=function(self)
			self:stoptweening()
		end;
		DisabledCommand=function(self)
			self:diffusealpha(0)
		end;
		EnabledCommand=function(self)
			self:diffusealpha(1)
		end;
	};
	LoadActor("cursor.png")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):x(SCREEN_CENTER_X+124):y(SCREEN_CENTER_Y-16):visible(GAMESTATE:GetCurrentGame():GetName() == "beat")
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():diffusealpha(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():diffusealpha(0)
		end;
		DisabledCommand=function(self)
			self:diffusealpha(0)
		end;
		EnabledCommand=function(self)
			self:diffusealpha(1)
		end;
	};
};

return t;