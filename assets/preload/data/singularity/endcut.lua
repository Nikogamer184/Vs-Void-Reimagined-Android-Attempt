local blockEnd = true
local canskip = false
local dialstage = -999999999
function onEndSong()
	removeLuaSprite('thescreen')
	if isStoryMode and blockEnd then
			runTimer('amongus', 0.1)
			doTweenAlpha('black2', 'black2', 1, 0.1, 'linear')
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
	if keyJustPressed('space') and canskip == true then
		dialstage = dialstage + 1
		playSound('skiptext', 1)
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = true
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		blockEnd = false;
		endSong();
		stopSound('saul')
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'amongus' then
		dialstage = 1
		doTweenAlpha('ending', 'ending', 1, 1, 'linear')
		doTweenAlpha('ending1', 'wordend1', 1, 1, 'linear')
		doTweenAlpha('ending2', 'wordend2', 1, 1, 'linear')
		playSound('soulgooman', 1, 'saul')
		runTimer('anothertexthi', 1)
		runTimer('flytext', 0.1)
	end
	if tag == 'anothertexthi' then
		doTweenY('five', 'wordend2', 590, 3.5, 'sineInOut')
	end
	if tag == 'flytext' then
		doTweenY('first', 'wordend1', 360, 5, 'sineInOut')
		doTweenY('five', 'wordend2', 590, 5, 'sineInOut')
		runTimer('flytext2', 5)
	end
	if tag == 'flytext2' then
		runTimer('flytext', 5)
		doTweenY('first', 'wordend1', 400, 5, 'sineInOut')
		doTweenY('five', 'wordend2', 630, 5, 'sineInOut')
	end
end