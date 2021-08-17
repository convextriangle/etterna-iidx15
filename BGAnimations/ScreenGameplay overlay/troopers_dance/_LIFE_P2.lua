local t = Def.ActorFrame{
	LoadActor("LIFE_P2")..{
		InitCommand=function(self)
			self:x(0):y(0)
		end;
	};
	LoadActor("2dx")..{
		InitCommand=function(self)
			self:rotationz(180):diffuse(.3,.3,.3,1):x(8):y(-2):visible((GAMESTATE:IsPlayerEnabled(PLAYER_2)))
		end;
	};
	LoadActor("2dx")..{
		InitCommand=function(self)
			self:rotationz(180):x(8):y(-2):visible((GAMESTATE:IsPlayerEnabled(PLAYER_2)))
		end;
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_2 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
			end;
		end;
	};
	-- tip
	LoadActor("tip")..{
		InitCommand=function(self)
			self:rotationz(180):diffuseblink():effectperiod(0.16):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0")):x(16):y(-2):visible((GAMESTATE:IsPlayerEnabled(PLAYER_2)))
		end;
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_2 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
	LoadActor("tip")..{
		InitCommand=function(self)
			self:rotationz(180):diffuseblink():effectperiod(0.1):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0")):x(12):y(-2):visible((GAMESTATE:IsPlayerEnabled(PLAYER_2)))
		end;
		LifeChangedMessageCommand=function(self,param)
			if param.Player == PLAYER_2 then
				local life = param.LifeMeter:GetLife();
				self:cropright(1 - life);
				self:cropleft(life - 0.02);
			end;
		end;
	};
};

return t;