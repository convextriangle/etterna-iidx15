local t = Def.ActorFrame{
	LoadActor("cover")..{ InitCommand=function(self)
		self:Center():zoomtowidth(SCREEN_WIDTH)
	end;
	LoadActor("stuff")..{ InitCommand=function(self)
		self:Center()
	end;
};

return t;