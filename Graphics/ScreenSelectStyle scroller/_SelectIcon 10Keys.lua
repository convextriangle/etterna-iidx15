local t = Def.ActorFrame {
	LoadActor("10keys.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X-125):y(SCREEN_CENTER_Y-16):visible(GAMESTATE:GetCurrentGame():GetName() == "beat")
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		GainFocusCommand=function(self)
			self:stoptweening()
		end;
		LoseFocusCommand=function(self)
			self:stoptweening()
		end;
		DisabledCommand=function(self)
			self:diffusealpha(0.6)
		end;
		EnabledCommand=function(self)
			self:diffusealpha(1)
		end;
	};
};

return t;