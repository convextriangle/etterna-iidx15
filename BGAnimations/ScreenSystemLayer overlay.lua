local function CreditsText( pn )
	function update(self)
		local str = ScreenSystemLayerHelpers.GetCreditsMessage(pn);
		self:settext(str);
	end

	function UpdateVisible(self)
		local screen = SCREENMAN:GetTopScreen();
		local bShow = true;
		if screen then
			local sClass = screen:GetName();
			bShow = THEME:GetMetric( sClass, "ShowCoinsAndCredits" );
		end

		self:visible( bShow );
	end

	local text = LoadFont(Var "LoadingScreen","credits") .. {
		InitCommand=THEME:GetMetric(Var "LoadingScreen","CreditsInitCommand");
		RefreshCreditTextMessageCommand=update;
		CoinInsertedMessageCommand=update;
		PlayerJoinedMessageCommand=update;
		ScreenChangedMessageCommand=UpdateVisible;
	};
	return text;
end

local t = Def.ActorFrame {
	Def.ActorFrame {
		LoadFont(Var "LoadingScreen","SystemMessage") .. {
			Name="Text";
			InitCommand=function(self)
				self:maxwidth(750):y(SCREEN_TOP+10):strokecolor(color("#000000")):shadowlength(0):diffusealpha(0)
			end;
			OnCommand=function(self)
				self:finishtweening():x(SCREEN_LEFT+10):diffusealpha(1):addx(-SCREEN_WIDTH):linear(0.5):addx(SCREEN_WIDTH)
			end;
			OffCommand=function(self)
				self:sleep(3):linear(0.5):diffusealpha(0)
			end;
		};
		SystemMessageMessageCommand = function(self, params)
			self:GetChild("Text"):settext( params.Message );
			self:playcommand( "On" );
			if params.NoAnimate then
				self:finishtweening();
			end
			self:playcommand( "Off" );
		end;
		HideSystemMessageMessageCommand = function(self)
			self:finishtweening()
		end;
	};
	CreditsText( PLAYER_1 ) .. {
		InitCommand=function(self)
			self:horizalign(left):x(THEME:GetMetric(Var "LoadingScreen","CreditsP1X")):y(THEME:GetMetric(Var "LoadingScreen","CreditsP1Y"))
		end;
	};
	CreditsText( PLAYER_2 ) .. {
		InitCommand=function(self)
			self:horizalign(right):x(THEME:GetMetric(Var "LoadingScreen","CreditsP2X")):y(THEME:GetMetric(Var "LoadingScreen","CreditsP2Y"))
		end;
	};
};
return t;
