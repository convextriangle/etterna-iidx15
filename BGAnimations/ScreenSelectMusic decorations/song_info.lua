local t = Def.ActorFrame {}

-- from bare-frames
-- Controls the song info relevant children of the ScreenSelectMusic decorations actorframe

local meter
local steps
local song

-- functionally make skillset rating text to save space
local function makeSSes()
    local ss = Def.ActorFrame {}
    ss[#ss+1] = LoadFont("artist 16px") .. {
            InitCommand = function(self)
                self:zoom(0.6)
                self:halign(0)
            end,
            SetStuffCommand = function(self)
                if not steps or not meter then
                    self:settextf("Overall: ------")
                else 
                    self:settextf("Overall: %5.2f", meter)
                end
            end
    };

    return ss;
end

t[#t+1] = Def.ActorFrame {
    InitCommand = function(self)
        self:x(SCREEN_CENTER_X-280)
        self:y(SCREEN_CENTER_Y+80)
    end,
    CurrentStepsP1ChangedMessageCommand = function(self)
        steps = GAMESTATE:GetCurrentSteps()
        song = GAMESTATE:GetCurrentSong()
        if steps then
            -- displaying only overall MSD
            meter = steps:GetMSD(getCurRateValue(), 1);
        end
        self:playcommand("SetStuff")
    end,

    makeSSes() .. {
        InitCommand = function(self)
            self:y(10)
        end
    },

	LoadFont("artist 16px") .. {
        Name = "RateDisplay",
		InitCommand = function(self)
			self:xy(100, 20):zoom(0.3)
		end,
		CurrentStepsP1ChangedMessageCommand = function(self)
			self:settext(getCurRateDisplayString())
		end,
        CodeMessageCommand = function(self, params)
			local rate = getCurRateValue()
			ChangeMusicRate(rate, params)
			self:settext(getCurRateDisplayString())
		end
	}   
}

return t