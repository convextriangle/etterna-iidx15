local t = Def.ActorFrame{
	LoadActor(THEME:GetPathS("","LOSE"))..{
		OnCommand=function(self)
			self:play()
		end;
		OffCommand=function(self)
			self:stop()
		end;
		Condition=STATSMAN:GetBestGrade() >= 6;
	};
	LoadActor(THEME:GetPathS("","WIN"))..{
		OnCommand=function(self)
			self:play()
		end;
		OffCommand=function(self)
			self:stop()
		end;
		Condition=STATSMAN:GetBestGrade() < 6;
	};
	-- A --
	LoadActor("A")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	Condition=STATSMAN:GetBestGrade() == 3;
	};
	-- AA --
	LoadActor("AA")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	Condition=STATSMAN:GetBestGrade() == 2;
	};
	-- AAA --
	LoadActor("AAA")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	Condition=STATSMAN:GetBestGrade() == 1 or STATSMAN:GetBestGrade() == 0;
	};
	-- _CLEAR -- (B and C)
	LoadActor("_CLEAR")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	Condition=STATSMAN:GetBestGrade() == 4 or STATSMAN:GetBestGrade() == 5;
	};
	-- _FAILED -- (D and E)
	LoadActor("_FAILED")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	Condition=STATSMAN:GetBestGrade() >= 6;
	};
	-- HEADER --
	LoadActor("HEADER")..{
	InitCommand=function(self)
		self:zoomx(SCREEN_WIDTH/640)
	end;
	};
	-- CLEAR_FRAME --
	LoadActor("IIDX_CLEAR_FRAME")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() == "beat" or GAMESTATE:GetCurrentGame():GetName() == "pump"):zoomx(SCREEN_WIDTH/640)
	end;
	};
	LoadActor("DDR_CLEAR_FRAME")..{
	InitCommand=function(self)
		self:visible(GAMESTATE:GetCurrentGame():GetName() == "dance" or GAMESTATE:GetCurrentGame():GetName() == "kb7"):zoomx(SCREEN_WIDTH/640)
	end;
	};
 	LoadFont("TextBanner text") .. {
		Text="song";
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-65):maxwidth(256):diffusealpha(0):sleep(.2):linear(.2):diffusealpha(1)
		end;
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
			if not song
				then self:visible(false)
				return
			end
			self:visible(true)
			self:settext(song:GetDisplayMainTitle())
		end
	};
};

return t;