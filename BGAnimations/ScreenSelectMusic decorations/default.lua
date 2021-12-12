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

for pn in ivalues(PlayerNumber) do
	local MetricsName = "DifficultyIcon"..PlayerNumberToString(pn);
	t[#t+1] = StandardDecorationFromFile(MetricsName,MetricsName);
end;

return t
