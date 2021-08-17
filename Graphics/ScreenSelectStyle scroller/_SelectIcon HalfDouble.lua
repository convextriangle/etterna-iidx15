local t = Def.ActorFrame {
	LoadActor("half-double.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+180):y(SCREEN_CENTER_Y-80):visible(GAMESTATE:GetCurrentGame():GetName() == "pump")
		end;
		OnCommand=function(self)
			self:zoom(0):bounceend(0.35):zoom(.8)
		end;
		GainFocusCommand=function(self)
			self:stoptweening():bounceend(0.125):zoom(1)
		end;
		LoseFocusCommand=function(self)
			self:stoptweening():decelerate(0.25):zoom(0.8)
		end;
		DisabledCommand=function(self)
			self:diffusealpha(.6)
		end;
		EnabledCommand=function(self)
			self:diffusealpha(1)
		end;
	};
};

return t;