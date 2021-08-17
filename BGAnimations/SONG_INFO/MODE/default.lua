local StageToFrame = {
	Stage_1st		= 0,
	Stage_2nd		= 1,
	Stage_3rd		= 2,
	Stage_4th		= 3,
	Stage_5th		= 4,
	Stage_6th		= 5,
	Stage_Final		= 6,
	Stage_Extra1	= 7,
	Stage_Extra2	= 8,
	Stage_Event		= 9,
};
return Def.ActorFrame{
	LoadActor("MODE 1x10.png")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() ~= "beat"):x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):animate(false):setstate(0):diffusealpha(0):sleep(1):linear(0.2):diffusealpha(1):sleep(1.8):linear(0.2):diffusealpha(0)
	end;
	OnCommand=function(self)
		self:setstate(StageToFrame["Stage_Event"]);
	end;
	};
	LoadActor("MODE 1x10.png")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() == "beat"):x(320):y(SCREEN_CENTER_Y):animate(false):setstate(0):diffusealpha(1):sleep(.9):sleep(2.2):linear(.3):diffusealpha(0)
	end;
	OnCommand=function(self)
		self:setstate(StageToFrame["Stage_Event"]);
	end;
	};
};