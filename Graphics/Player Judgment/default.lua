return Def.ActorFrame{
	LoadActor("iidx")..{
	InitCommand=function(self)
		self:zoom(2.1):visible(GAMESTATE:GetCurrentGame():GetName() == "beat")
	end;
	};
	LoadActor("pump")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() == "pump")
	end;
	};
	LoadActor("dance")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() ~= "pump" and GAMESTATE:GetCurrentGame():GetName() ~= "beat")
	end;
	};
}