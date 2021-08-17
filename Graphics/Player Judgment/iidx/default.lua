local player = Var "Player";
return Def.ActorFrame{
	--IIDX JUDGMENT-----------------------------------------------------------------------------------------------------------------------
	--GREAT-------------------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_YELLOW_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.05):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats( player )
		local curCombo = stats:GetCurrentCombo();
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W3'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Bx" ..curCombo + 1)
		else
			self:visible(false)
		end;
	end;
	};
	--GOOD--------------------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_YELLOW_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.05):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W4'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Cxxx")
		else
			self:visible(false)
		end;
	end;
	};
	--BAD---------------------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_YELLOW_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.05):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W5'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Dxxx")
		else
			self:visible(false)
		end;
	end;
	};
	--POOR--------------------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_YELLOW_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.05):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_Miss'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Exxxx")
		else
			self:visible(false)
		end;
	end;
	};
	--P_GREAT_PINK------------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_PINK_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.06):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats( player )
		local curCombo = stats:GetCurrentCombo();
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W2'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Ax" ..curCombo + 1)
		else
			self:visible(false)
		end;
	end;
	};
	--P_GREAT_GREEN-----------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_GREEN_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.06):effectcolor1(color("1,1,1,0")):effectcolor2(color("1,1,1,1"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats( player )
		local curCombo = stats:GetCurrentCombo();
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W2'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Ax" ..curCombo + 1)
		else
			self:visible(false)
		end;
	end;
	};
	--P_GREAT_BLUE-----------------------------------------------------------------------------------------------------------------------
	Def.BitmapText { File = "_BLUE_COMBO.ini" }..{
	InitCommand=function(self)
		self:horizalign(center):x(0):y(0):diffuseblink():effectperiod(0.1):effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0"))
	end;
	_YComboMessageCommand=function(self)
		self:stoptweening():diffusealpha(1):sleep(0.85):diffusealpha(0)
	end,
	JudgmentMessageCommand=function(self,params)
		local judg = params.TapNoteScore
		local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats( player )
		local curCombo = stats:GetCurrentCombo();
		if params.Player ~= player then return end
		if judg == 'TapNoteScore_W2'
		then
			MESSAGEMAN:Broadcast("_YCombo")
			self:visible(true)
			self:settext("Ax" ..curCombo + 1)
		else
			self:visible(false)
		end;
	end;
	};
}