local DifficultyToFrame = {
	Difficulty_Beginner	 = 0,
	Difficulty_Easy		 = 1,
	Difficulty_Medium	 = 2,
	Difficulty_Hard		 = 3,
	Difficulty_Challenge = 4,
	Difficulty_Edit		 = 5,
};
return Def.ActorFrame{
	--OnlyP1--
	LoadActor("_cursor 1x6.png")..{
	InitCommand=function(self)
		self:x(-65):y(-9):rotationz(90):animate(false):setstate(0)
	end;
	BeginCommand=function(self)
		self:player(PLAYER_1)
	end;
	SetCommand=function(self)
		if GAMESTATE:GetCurrentSong() then
			local StepsOrTrail;
			StepsOrTrail = GAMESTATE:GetCurrentSteps(PLAYER_1);
			if StepsOrTrail then
				self:setstate(DifficultyToFrame[StepsOrTrail:GetDifficulty()]);
				self:visible(true)
			else
				self:visible(false)
			end;
		else
			self:visible(false)
		end;
	end;
	CurrentStepsP1ChangedMessageCommand=function(self)
		self:stoptweening():playcommand("Set")
	end;
	CurrentTrailP1ChangedMessageCommand=function(self)
		self:stoptweening():playcommand("Set")
	end;
	CurrentSongChangedChangedMessageCommand=function(self)
		self:stoptweening():playcommand("Set")
	end;
	};
};