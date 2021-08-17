return Def.ActorFrame {
	LoadActor("1.png")..{
	InitCommand=function(self)
		self:visible(true)
	end;
	};
	LoadActor("course_wheel.png")..{
	InitCommand=function(self)
	-- previously set to visible(true):addx(-16) 
	-- but the scale seems to be broken so
	-- fix it if you want yourself, i'm not doing it - 000fds
		self:visible(false)
	end;
	};
}