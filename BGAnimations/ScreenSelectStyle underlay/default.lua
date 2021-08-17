local t = Def.ActorFrame {
	-- [Layer25]
	LoadActor("BG.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoomtowidth(SCREEN_WIDTH):zoomtoheight(SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):linear(0.3):diffusealpha(1)
		end;
	};
	-- [Layer26]
	LoadActor("text1.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-190)
		end;
		OnCommand=function(self)
			self:diffusealpha(0):linear(0.3):diffusealpha(1)
		end;
		OffCommand=function(self)
			self:diffusealpha(0):sleep(0.0):zoomy(0):linear(0.2):zoomy(1.2):diffusealpha(1):linear(0.1):zoomy(1)
		end;
	};
	-- [Layer27]
	LoadActor("text1.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y-190)
		end;
		OnCommand=function(self)
			self:diffusealpha(0)
		end;
		OffCommand=function(self)
			self:blend('BlendMode_Add'):sleep(0.2):diffusealpha(1):sleep(0.1):diffusealpha(0)
		end;
	};
	-- [Layer28]
	LoadActor("text2.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+135):visible(GAMESTATE:GetCurrentGame():GetName() ~= "pump")
		end;
		OnCommand=function(self)
			self:zoomy(0):linear(0.3):zoomy(1)
		end;
		OffCommand=function(self)
			self:linear(0.3):addy(20):diffusealpha(0)
		end;
	};
	-- [Layer29]
	LoadActor("time_remain.png")..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+164)
		end;
		OnCommand=function(self)
			self:zoomy(0):linear(0.3):zoomy(1)
		end;
	};
};
return t