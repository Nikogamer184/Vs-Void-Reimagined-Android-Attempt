local THEY = 570
function onUpdate()
if downscroll then
	THEY = 10
end
		songPos = getSongPosition()
	local currentBeat = (songPos/2000)*(bpm/80)
	if curStep >= 0 and curStep < 2904 then
		
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 10*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 10*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 10*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 10*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
	end
	if (curStep >= 2336 and curStep < 2719) then
doTweenY('hejiggle', 'iconP2', THEY - 20*math.sin((currentBeat*100)*math.pi), 0.1)
	end
	if (curStep >= 0 and curStep < 2328) or (curStep >= 2720 and curStep < 2904) then
doTweenY('hejiggle', 'iconP2', THEY - 10*math.sin((currentBeat*1)*math.pi), 0.5)
	end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
		setProperty("bfnightmare.x", 825-25)
		setProperty("bfnightmare.y", 300)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		setProperty("bfnightmare.x", 825+20)
		setProperty("bfnightmare.y", 300)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
		setProperty("bfnightmare.x", 825+15)
		setProperty("bfnightmare.y", 300-15)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
		setProperty("bfnightmare.x", 825)
		setProperty("bfnightmare.y", 300+10)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
		setProperty("bfnightmare.x", 825-25)
		setProperty("bfnightmare.y", 300)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
		setProperty("bfnightmare.x", 825+20)
		setProperty("bfnightmare.y", 300)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
		setProperty("bfnightmare.x", 825+15)
		setProperty("bfnightmare.y", 300-15)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
		setProperty("bfnightmare.x", 825)
		setProperty("bfnightmare.y", 300+10)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		setProperty("bfnightmare.x", 825)
		setProperty("bfnightmare.y", 300)
            end
end
function onStepHit()
	if curStep == 2912 then
	for i=7,4,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 50)
	end
	end
end
function onBeatHit()
	if curBeat % 2 == 1 then
		if curBeat > 648 and curBeat < 712 then
		setProperty('coolflash.alpha', 1)
		doTweenAlpha('ajhsgfhsajkfajkhsf', 'coolflash', 0.0001, 0.5, 'linear')
		end
	end
end