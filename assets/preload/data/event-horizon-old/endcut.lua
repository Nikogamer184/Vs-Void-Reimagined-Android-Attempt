local blockEnd = true
local canskip = false
local dialstage = -999999999
function onEndSong()
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
		doTweenAlpha('ending1', 'first', 1, 1, 'linear')
		doTweenAlpha('ending2', 'second', 1, 1, 'linear')
		doTweenAlpha('ending3', 'third', 1, 1, 'linear')
		doTweenAlpha('ending4', 'four', 1, 1, 'linear')
		doTweenAlpha('ending5', 'five', 1, 1, 'linear')
		doTweenAlpha('ending6', 'six', 1, 1, 'linear')
		playSound('soulgooman', 1, 'saul')
		runTimer('anothertexthi', 4)
		runTimer('flytext', 0.1)
	end
	if tag == 'anothertexthi' then
		doTweenY('five', 'five', 590, 3.5, 'sineInOut')
		doTweenY('six', 'six', 620, 3.5, 'sineInOut')
	end
	if tag == 'flytext' then
		doTweenY('first', 'first', 360, 10, 'sineInOut')
		doTweenY('second', 'second', 390, 10, 'sineInOut')
		doTweenY('third', 'third', 430, 10, 'sineInOut')
		doTweenY('four', 'four', 490, 10, 'sineInOut')
		runTimer('flytext2', 10)
	end
	if tag == 'flytext2' then
		doTweenY('first', 'first', 400, 10, 'sineInOut')
		doTweenY('second', 'second', 430, 10, 'sineInOut')
		doTweenY('third', 'third', 470, 10, 'sineInOut')
		doTweenY('four', 'four', 530, 10, 'sineInOut')
		doTweenY('five', 'five', 630, 10, 'sineInOut')
		doTweenY('six', 'six', 660, 10, 'sineInOut')
	end
end