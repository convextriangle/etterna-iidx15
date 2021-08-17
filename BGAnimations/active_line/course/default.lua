return Def.ActorFrame {
	Name="Arrows";
	LoadActor("ACTIVE_LINE1")..{
		InitCommand=function(self)
			self:playcommand("Set"):blend('BlendMode_Add'):diffusealpha(0):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-65):zoomtowidth(SCREEN_WIDTH)
		end;
		CurrentSongChangedMessageCommand=function(self)
			self:finishtweening():playcommand("Set")
		end,
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:decelerate(0.05)
			self:addy(-8)
			self:diffusealpha(0.5)
			self:decelerate(0.05)
			self:addy(-8)
			self:diffusealpha(0)
			self:linear(0)
			self:addy(16)
		end;
	},
	LoadActor("ACTIVE_LINE2")..{
		InitCommand=function(self)
			self:playcommand("Set"):blend('BlendMode_Add'):diffusealpha(0):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoomtowidth(SCREEN_WIDTH)
		end;
		CurrentSongChangedMessageCommand=function(self)
			self:finishtweening():playcommand("Set")
		end,
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:decelerate(0.05)
			self:addy(8)
			self:diffusealpha(0.5)
			self:decelerate(0.05)
			self:addy(8)
			self:diffusealpha(0)
			self:linear(0)
			self:addy(-16)
		end;
	},
	LoadActor("ACTIVE_LINE3")..{
		InitCommand=function(self)
			self:playcommand("Set"):blend('BlendMode_Add'):diffusealpha(0):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-39):zoomtowidth(SCREEN_WIDTH)
		end;
		CurrentSongChangedMessageCommand=function(self)
			self:finishtweening():playcommand("Set")
		end,
		SetCommand=function(self)
			self:diffusealpha(1)
			self:sleep(0.08)
			self:diffusealpha(0)
		end;
	},
	LoadActor("flash")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):x(WideScale(SCREEN_CENTER_X+309,SCREEN_CENTER_X+412)):y(SCREEN_CENTER_Y-67)
		end;
		PreviousSongMessageCommand=function(self)
			self:stoptweening()
			self:diffusealpha(1)
			self:decelerate(0.4)
			self:diffusealpha(0)
		end;
	};
	LoadActor("flash")..{
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0):x(WideScale(SCREEN_CENTER_X+309,SCREEN_CENTER_X+412)):y(SCREEN_CENTER_Y+189)
		end;
		NextSongMessageCommand=function(self)
			self:stoptweening()
			self:diffusealpha(1)
			self:decelerate(0.4)
			self:diffusealpha(0)
		end;
	};
}