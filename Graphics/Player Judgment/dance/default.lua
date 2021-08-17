--S�, ando usando judge premiere para el themekit �Y qu�?
local player = Var "Player"
-- blah
--if not getenv then getenv = function() return false end end

--frame correspondiente de cada judgment
local TNSframe = {
	TapNoteScore_CheckpointHit = 1;
	TapNoteScore_W1 = 0;
	TapNoteScore_W2 = 1;
	TapNoteScore_W3 = 2;
	TapNoteScore_W4 = 3;
	TapNoteScore_W5 = 4;
	TapNoteScore_Miss = 5;
	TapNoteScore_CheckpointMiss = 5;
}

--frames para RG
local TNSframeReversed = {
	TapNoteScore_CheckpointHit = 4;
	TapNoteScore_W1 = 4;
	TapNoteScore_W2 = 4;
	TapNoteScore_W3 = 3;
	TapNoteScore_W4 = 2;
	TapNoteScore_W5 = 1;
	TapNoteScore_Miss = 0;
	TapNoteScore_CheckpointMiss = 0;
}

return Def.ActorFrame {
	--init
	InitCommand=function(self)
		local this = self:GetChildren()
		this.judgm:pause();
		
		--this.judgm:y(-35);
		--this.combo:y(42);
		
		this.combo:vertalign(bottom);		
		this.combo:horizalign(center);
		
		this.judgm:visible(false);
		this.combo:visible(false);
		
		--self:runcommandsonleaves(cmd( SetTextureFiltering,false ))
	end;

	--judges
	LoadActor("judge")..{
		Name="judgm";
		NormalCommand=function(self)
			self:y(-20):diffusealpha(1):glow(color("1,1,1,0.4")):shadowlength(0):zoomx(1.12):zoomy(1.48):linear(0.05):zoom(1):glow(color("1,1,1,0")):diffuse(color("1,1,1,1")):sleep(0.495):diffusealpha(0)
		end
	};
	--combo
	Def.BitmapText { File = "Combo.ini" }..{
		Name="combo";
		NormalCommand=function(self)
			self:y(50):diffusealpha(1):glow(color("1,1,1,0.4")):shadowlength(0):zoom(1.8):linear(0.05):zoom(1.2):glow(color("1,1,1,0")):diffuse(color("1,1,1,1")):sleep(0.495):diffusealpha(0)
		end
	};
	
	--"PERFECT"!
	JudgmentMessageCommand=function(self,param)
		local this = self:GetChildren()
		local iTns = TNSframe[param.TapNoteScore]
		
		if getenv("ReverseGrade"..player) then
			iTns = TNSframeReversed[param.TapNoteScore]
		end
		
		--no player, no job
		if param.Player ~= player then return end
		if param.HoldNoteScore then return end
		
		this.judgm:visible(true);
		this.judgm:setstate(iTns);
		--this.combo:visible(true);
		--this.label:visible(true);
		
		this.judgm:stoptweening();
		this.judgm:queuecommand("Normal");
	end;

	ComboCommand=function(self,param)
		local this = self:GetChildren()
		local combo = param.Combo or 0;
		
		--color misses o RG
		local ccolor
		if param.Misses then
			ccolor = color("1,0,0,1");
			--GradeReverse, combo misses no rojo
			--puedes cambiar userprefs por getenv
			if getenv("ReverseGrade"..player) then
				ccolor = color("1,1,1,1");
			end
		else
			ccolor = color("1,1,1,1");
			--GradeReverse, combo rojo
			if getenv("ReverseGrade"..player) then
				ccolor = color("1,0,0,1");
			end
		end;
		
		--visibilidad
		this.combo:visible(combo >= 0);
		this.combo:stoptweening();
		this.combo:settext(string.format("%3i",combo) .."x");
		this.combo:diffuse(ccolor);
		this.combo:queuecommand("Normal");
	end;
}