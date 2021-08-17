local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("BannerFrame","banner frame");
t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("TotalTime","TotalTime");
t[#t+1] = StandardDecorationFromFileOptional("DifficultyList","DifficultyList");
--[[
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP1","StepsDisplayP1");
t[#t+1] = StandardDecorationFromFileOptional("StepsDisplayP2","StepsDisplayP2");
t[#t+1] = StandardDecorationFromFileOptional("SongData","SongData");
]]

for pn in ivalues(PlayerNumber) do
	local MetricsName = "DifficultyIcon"..PlayerNumberToString(pn);
	t[#t+1] = StandardDecorationFromFile(MetricsName,MetricsName);
end;

return t
