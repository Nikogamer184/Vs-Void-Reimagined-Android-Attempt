local THEY = 570
function onUpdate()
if downscroll then
	THEY = 10
end
		songPos = getSongPosition()
	local currentBeat = (songPos/2000)*(bpm/80)
        --if (curStep > 383 and curStep < 1151) or curStep > 1407 then
        if curStep > 0 then
		
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 10*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 10*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 10*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 10*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
	end
        --if (curStep > 383 and curStep < 1151) or curStep > 1407 then
        if curStep > 0 then
doTweenY('hejiggle2', 'iconP2', THEY - 20*math.sin((currentBeat*100)*math.pi), 0.1)
	end
end
function onCreatePost()
	doTweenAngle("thespeen", "bfnightmare", 360, 25, "linear")
	doTweenY('fuckers1', 'fuckers2', 210, 6, 'sineInOut')
	doTweenX('fuckers2', 'fuckers2', 60, 4, 'sineInOut')
end
local spin_loop_counter = 0
function onTweenCompleted(tag)
	if tag == 'fuckers1' then
	doTweenY('fuckers11', 'fuckers2', 190, 6, 'sineInOut')
	end
	if tag == 'fuckers2' then
	doTweenX('fuckers21', 'fuckers2', 40, 4, 'sineInOut')
	end
	if tag == 'fuckers11' then
	doTweenY('fuckers1', 'fuckers2', 210, 6, 'sineInOut')
	end
	if tag == 'fuckers21' then
	doTweenX('fuckers2', 'fuckers2', 60, 4, 'sineInOut')
	end
	if tag == 'thespeen' then
		setProperty("bfnightmare.angle", 0)
	doTweenAngle("thespeen", "bfnightmare", 360, 25, "linear")
	end
end