local t = Def.ActorFrame{
	--P1 NUMBERS
	LoadFont("Evaluation Numbers")..{
	InitCommand=function(self)
		self:horizalign(right):vertalign(top):x(173):y(SCREEN_CENTER_Y+59)
	end;
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
		local w2 = stats:GetTapNoteScores('TapNoteScore_W2');
			str = string.format("%4d\n%4d\n%4d\n%4d\n%4d",
			stats:GetTapNoteScores('TapNoteScore_W2'),
			stats:GetTapNoteScores('TapNoteScore_W3'),
			stats:GetTapNoteScores('TapNoteScore_W4'),
			stats:GetTapNoteScores('TapNoteScore_W5'),
			stats:GetTapNoteScores('TapNoteScore_Miss')
			)
		self:settext(str)
	end;
	};
	LoadFont("Evaluation Numbers")..{
	InitCommand=function(self)
		self:horizalign(right):vertalign(top):x(173):y(SCREEN_CENTER_Y+174)
	end;
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
			str = string.format("%4d",
			stats:GetHoldNoteScores('HoldNoteScore_Held')
			)
		self:settext(str)
	end;
	};
	LoadFont("Evaluation Numbers")..{
	InitCommand=function(self)
		self:horizalign(left):vertalign(top):x(122):y(SCREEN_CENTER_Y-12)
	end;
	OnCommand=function(self,params)
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
		local radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1)
			str = string.format("%6d\n%4d\n%4d",
			stats:GetCurrentPossibleDancePoints(),
			stats:MaxCombo(),
			stats:GetTapNoteScores('TapNoteScore_W1')
			)
		self:settext(str)
	end;
	};
	LoadFont("Evaluation Numbers")..{
	InitCommand=function(self)
		self:horizalign(left):vertalign(top):x(122):y(SCREEN_CENTER_Y+196)
	end;
	OnCommand=function(self,params)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore()
		self:settext(string.format("%6d",score))
	end;
	};
};

return t;