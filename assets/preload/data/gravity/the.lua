local THEY = 570
function onUpdate()
if downscroll then
	THEY = 10
end
		songPos = getSongPosition()
	local currentBeat = (songPos/2000)*(bpm/80)
	if curStep > 1471 and curStep < 1690 then
		
noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 10*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 10*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 10*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 10*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
	end
	if curStep >= 1471 then
doTweenY('hejiggle', 'iconP2', THEY - 5*math.sin((currentBeat*1)*math.pi), 0.1)
	end
end
function onStepHit()
	if curStep == 1696 then
	for i=7,4,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 50)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', 567)
		end
	end
	end
end	
function onBeatHit()
	if curBeat % 2 == 1 then
		if (curBeat > 304 and curBeat < 334) or (curBeat > 496 and curBeat < 526) then
		setProperty('coolflash.alpha', 1)
		doTweenAlpha('ajhsgfhsajkfajkhsf', 'coolflash', 0.0001, 0.5, 'linear')
		end
	end
end