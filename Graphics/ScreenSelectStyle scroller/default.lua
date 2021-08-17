local gc = Var "GameCommand";
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_SelectIcon " ..string.format(gc:GetName() )) .. {
		DisabledCommand=function(self)
			self:diffuse(color("0.5,0.5,0.5,1"))
		end;
		EnabledCommand=function(self)
			self:diffuse(color("1,1,1,1"))
		end;
	};
};
return t