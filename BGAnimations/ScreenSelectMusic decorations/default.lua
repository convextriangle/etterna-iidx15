local t = Def.ActorFrame{};

t[#t+1] = StandardDecorationFromFileOptional("BannerFrame","banner frame");
t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("TotalTime","TotalTime");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyList","DifficultyList");
t[#t+1] = StandardDecorationFromFile("OptionsListFrame", "optionslist frame");
--[[
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP1","StepsDisplayP1");
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP2","StepsDisplayP2");
t[#t+1] = StandardDecorationFromFileOptional("SongData","SongData");
]]

t[#t+1] = LoadActor("song_search");
t[#t+1] = LoadActor("song_info");

t[#t+1] = LoadActor(THEME:GetPathG("","_press 5x2.png"))..{
	Frames = Sprite.LinearFrames(10,.3);
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoom(1):visible(false):draworder(100)
	end;
	SongChosenMessageCommand=function(self)
		self:setstate(0):visible(true)
	end;
	TwoPartConfirmCanceledMessageCommand=function(self)
		self:visible(false)
	end;
	SongUnchosenMessageCommand=function(self)
		self:visible(false)
	end;
};

for pn in ivalues(PlayerNumber) do
	local MetricsName = "DifficultyIcon"..PlayerNumberToString(pn);
	t[#t+1] = StandardDecorationFromFile(MetricsName,MetricsName);
end;

return t
