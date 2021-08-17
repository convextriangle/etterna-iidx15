local t = Def.ActorFrame {
	LoadActor("overlay")..{
	OnCommand=function(self)
		self:visible(true)
	end;
	OffCommand=function(self)
		self:visible(false)
	end;
	};
};
return t;