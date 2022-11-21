function onUpdate()
	if curStep >= 0 then
		songPos = getSongPosition()
	local currentBeat = (songPos/1000)*(bpm/80)
		doTweenAngle('heheheha', 'light1', 0-10*math.sin((currentBeat*0.1)*math.pi),0.001)
		doTweenAngle('hehehehaa', 'light2', 0-10*math.sin((currentBeat*0.14)*math.pi),0.001)
		doTweenAngle('hehehehaaa', 'light3', 0-10*math.sin((currentBeat*0.18)*math.pi),0.001)
		doTweenAngle('hehehehaaaa', 'light4', 0-10*math.sin((currentBeat*0.22)*math.pi),0.001)
	end
end
function opponentNoteHit()            
	if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
		setProperty('whitething.alpha', 0.2)
		doTweenAlpha('byebyebye', 'whitething', 0, 0.5, 'linear')
		setProperty('whitething2.alpha', 0.1)
		doTweenAlpha('h', 'whitething2', 0, 1, 'linear')
	end
    if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
		setProperty('whitething.alpha', 0.2)
		doTweenAlpha('byebyebye', 'whitething', 0, 0.5, 'linear')
		setProperty('whitething2.alpha', 0.1)
		doTweenAlpha('h', 'whitething2', 0, 1, 'linear')
    end
    if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
		setProperty('whitething.alpha', 0.2)
		doTweenAlpha('byebyebye', 'whitething', 0, 0.5, 'linear')
		setProperty('whitething2.alpha', 0.1)
		doTweenAlpha('h', 'whitething2', 0, 1, 'linear')
    end
    if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
		setProperty('whitething.alpha', 0.2)
		doTweenAlpha('byebyebye', 'whitething', 0, 0.5, 'linear')
		setProperty('whitething2.alpha', 0.1)
		doTweenAlpha('h', 'whitething2', 0, 1, 'linear')
    end
end
function onBeatHit()
	if curBeat > 192 and curBeat < 448 then
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
	if curBeat > 1 and curBeat < 34 or curBeat > 514 then
		setProperty('camZooming', false)
	end
end
function onStepHit()
	if curStep == 252 then
		doTweenY('light1goupplease', 'light1', 0, 0.05, 'quadOut')
		doTweenY('light2goupplease', 'light2', 0, 0.1, 'quadOut')
		doTweenY('light3goupplease', 'light3', 0, 0.15, 'quadOut')
		doTweenY('light4goupplease', 'light4', 0, 0.2, 'quadOut')
	end
	if curStep == 1792 then
		doTweenY('light1goupplease', 'light1', 500, 0.05, 'quadOut')
		doTweenY('light2goupplease', 'light2', 500, 0.1, 'quadOut')
		doTweenY('light3goupplease', 'light3', 500, 0.15, 'quadOut')
		doTweenY('light4goupplease', 'light4', 500, 0.2, 'quadOut')
		noteTweenY('oppo00', 0, 50, 1, 'sineOut')
		noteTweenY('oppo11', 1, 50, 1, 'sineOut')
		noteTweenY('oppo22', 2, 50, 1, 'sineOut')
		noteTweenY('oppo33', 3, 50, 1, 'sineOut')
		if downscroll then
		noteTweenY('oppo00', 0, 567, 1, 'sineOut')
		noteTweenY('oppo11', 1, 567, 1, 'sineOut')
		noteTweenY('oppo22', 2, 567, 1, 'sineOut')
		noteTweenY('oppo33', 3, 567, 1, 'sineOut')
		end
		setProperty('cum.alpha', 1)
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
		setProperty('difficulty.alpha', 0)
		doTweenAlpha('jey', 'cum', 0, 2, 'linear')
		setProperty('cum2.alpha', 1)
		setProperty('therock2.alpha', 0)
		setProperty('gf.alpha', 0)
		setProperty('camGame.zoom', 1)
		setProperty('defaultCamZoom', 1)
		setProperty('timeBar.alpha', 0)
		setProperty('timeTxt.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
		doTweenY('2fastmatee', 'healthBar', -600, 0.00001, 'linear')
	end
	if curStep == 2048 then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
		setProperty('camGame.zoom', 0.7)
		setProperty('defaultCamZoom', 0.7)
			setProperty('cum.alpha', 1)
			doTweenAlpha('jey', 'cum', 0, 1, 'linear')
			setProperty('cum2.alpha', 0)
			setProperty('therock2.alpha', 1)
			setProperty('gf.alpha', 1)
	for i=7,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 1000)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200)
		end
	end
	end
	if curStep == 2144 then
		doTweenAlpha('AMBLACK', 'AMBLACK', 1, 3, 'linear')
	end
end	