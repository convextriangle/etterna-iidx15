local gc = Var "GameCommand";
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( gc:GetName() ) .. {
	};
};
return t