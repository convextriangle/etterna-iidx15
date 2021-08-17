-- This actor is duplicated.  Upvalues will not be duplicated.

local grades = {
	Grade_Tier01 = 0;
	Grade_Tier02 = 1;
	Grade_Tier03 = 2;
	Grade_Tier04 = 3;
	Grade_Tier05 = 4;
	Grade_Tier06 = 5;
	Grade_Tier07 = 6;
	Grade_Failed = 7;
	Grade_None = nil;
};

local t = LoadActor( "grades" ) .. {
	InitCommand=function(self)
		self:blend('BlendMode_Add'):pause()
		self:diffuseshift()
		self:effectperiod(1.25)		
	end;
	SetGradeCommand=function(self, params)
		local state = grades[params.Grade]
		if params.Grade == Grade_None then 
			self:visible(false)
		end
		--[[local state = grades[params.Grade];
		if state then
			self:visible( true );
			state = state*2;

			self:setstate(state);
		else
			self:visible(true);
		end;]]--
	end;
};

return t;