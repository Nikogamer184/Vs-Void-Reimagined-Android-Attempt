function onStepHit()
if not lowQuality then
	if curStep == 2336 then
	health = getProperty('health')
	if health < 1 then
		setProperty('health', 1)
	end
	setProperty('thethingie.alpha', 0)
		setProperty('back3.alpha', 0)
		setProperty('back22.alpha', 0)
		setProperty('back2.alpha', 0)
		setProperty('back1.alpha', 0)
		setProperty('back.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('hehehe', 'cum', 0, 1, 'linear')
		doTweenZoom('jeje', 'camGame', 0.6, 0.2, 'sineOut')
		setProperty('defaultCamZoom', 0.6)
					noteTweenX('oppo0', 0, 110, 0.1, 'circInOut')
					noteTweenX('oppo1', 1, 170, 0.1, 'circInOut')
					noteTweenX('oppo2', 2, 240, 0.1, 'circInOut')
					noteTweenX('oppo3', 3, 290, 0.1, 'circInOut')
						noteTweenY('oppo00', 0, 50, 1, 'circInOut')
						noteTweenY('oppo11', 1, 50, 1, 'circInOut')
						noteTweenY('oppo22', 2, 50, 1, 'circInOut')
						noteTweenY('oppo33', 3, 50, 1, 'circInOut')
		setProperty('iconP1.y', 550)
		setProperty('blackhole.alpha', 1)
		if downscroll then
		noteTweenY('oppo00', 0, 567, 1, 'sineOut')
		noteTweenY('oppo11', 1, 567, 1, 'sineOut')
		noteTweenY('oppo22', 2, 567, 1, 'sineOut')
		noteTweenY('oppo33', 3, 567, 1, 'sineOut')
		setProperty('iconP1.y', -20)
		end
		stopSound('fuckyou')
		playSound('bftransform', 0.5, 'fuckyou')
		setProperty('bfmomen.alpha', 1)
		if rus == true then
		setTextString('difficulty', 'ОХРИНЕТЬ ИНДИ КРОСС!!!111!')
		end
		if eng == true then
		setTextString('difficulty', 'HOLY SHIT INDIE CROSS!!!111!')
		end
	setProperty('bfnightmare.alpha', 1)
	objectPlayAnimation('backbroken','idle',true)
	setProperty('ripbozo.alpha', 0)
	objectPlayAnimation('bgglitch','glitchy',true)
	setProperty('thescreen.alpha', 0)
	setProperty('themic.alpha', 1)
	doTweenX('cantpausernbro', 'yecantpausemejack', 300, 0.1, 'circInOut')
	end
	if curStep == 2720 then
		setProperty('defaultCamZoom', 0.9)
				noteTweenX('oppo4', 4, 710, 1, 'circInOut')
				noteTweenX('oppo5', 5, 820, 1, 'circInOut')
				noteTweenX('oppo6', 6, 930, 1, 'circInOut')
				noteTweenX('oppo7', 7, 1040, 1, 'circInOut')
					noteTweenX('oppo0', 0, 110, 1, 'circInOut')
					noteTweenX('oppo1', 1, 220, 1, 'circInOut')
					noteTweenX('oppo2', 2, 330, 1, 'circInOut')
					noteTweenX('oppo3', 3, 440, 1, 'circInOut')
		noteTweenAlpha('oppo000', 0, 0, 2, 'linear')
		noteTweenAlpha('oppo111', 1, 0, 2, 'linear')
		noteTweenAlpha('oppo222', 2, 0, 2, 'linear')
		noteTweenAlpha('oppo333', 3, 0, 2, 'linear')
	objectPlayAnimation('bgglitch','idle',true)
		setProperty('blackhole.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('hehehe', 'cum', 0, 0.5, 'linear')
	end
	if curStep == 2756 then
		doTweenY('themicflyup', 'themic', 180, 0.5, 'sineIn')
		doTweenX('themicflyleft', 'themic', 450, 0.5, 'sineIn')
		doTweenAngle('themicangle', 'themic', 30, 0.5, 'sineIn')
		noteTweenAlpha('oppo000', 0, 1, 0.1, 'linear')
		noteTweenAlpha('oppo111', 1, 1, 0.1, 'linear')
		noteTweenAlpha('oppo222', 2, 1, 0.1, 'linear')
		noteTweenAlpha('oppo333', 3, 1, 0.1, 'linear')
	end
	if curStep == 2760 then
		setProperty('defaultCamZoom', 0.7)
		setProperty('themic.alpha', 0)
	end
	if curStep == 2848 then
		doTweenAlpha('asaaaaa', 'bfmomen', 0, 1, 'linear')
	end
	if curStep == 2856 then
		noteTweenAlpha('oppo000', 0, 0, 2, 'linear')
		noteTweenAlpha('oppo222', 2, 0, 2, 'linear')
		noteTweenAlpha('oppo333', 3, 0, 2, 'linear')
	for i=7,4,-1 do
		noteTweenAlpha('note' .. i .. 'alphatween', i, 0, 2, 'sineIn')
	end
		doTweenZoom('heisdyingholyshit', 'camGame', 1.1, 4, 'sineIn')
		doTweenAlpha('thescreen', 'thescreen', 1, 4, 'sineIn')
		doTweenAlpha('byehealth', 'healthBar', 0, 4, 'sineIn')
		doTweenAlpha('byethehealth', 'thehealth', 0, 4, 'sineIn')
		doTweenAlpha('byeiconP1', 'iconP1', 0, 4, 'sineIn')
		doTweenAlpha('byeiconP2', 'iconP2', 0, 4, 'sineIn')
		doTweenAlpha('byefuckers2', 'fuckers2', 0, 1, 'sineIn')
		setProperty('defaultCamZoom', 1.1)
	end
	if curStep == 2912 then
	setProperty('fuckers.alpha', 0)
		setProperty('fuckersbutscaredsomehow.alpha', 1)
		setProperty('cameraSpeed', 1);
		setProperty('back4.alpha', 0)
		setProperty('fuckers.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('hehehe', 'cum', 0, 0.5, 'linear')
		doTweenY('imsorryscore', 'scoreTxt', 674, 1, 'sineOut')
		doTweenY('fuckoffmisses2', 'miss', 800, 1, 'sineOut')
		if downscroll then
		doTweenY('imsorryscore', 'scoreTxt', 115, 1, 'sineOut')
		doTweenY('fuckoffmisses2', 'miss', -200, 1, 'sineOut')
		end
		noteTweenAlpha('oppo333', 1, 0, 2, 'linear')
		if rus == true then
		setTextString('difficulty', 'инди кросс пропал пацаны')
		end
		if eng == true then
		setTextString('difficulty', 'idnei cross id gone guys')
		end
		doTweenZoom('hesdead', 'camGame', 0.7, 0.0001, 'linear')
		setProperty('defaultCamZoom', 0.7)
	setProperty('thescreen.alpha', 0)
		stopSound('fuckyou')
		playSound('bftransform', 0.5, 'fuckyou')
	setProperty('bfnightmare.alpha', 0)
	setProperty('fuckers.alpha', 0)
	setProperty('gf.visible', true)
	setProperty('heavyisdead.alpha', 0)
		
		noteTweenY('hmoment1', 4, 50, 0.01, 'linear')
		noteTweenY('hmoment2', 5, 50, 0.01, 'linear')
		noteTweenY('hmoment3', 6, 50, 0.01, 'linear')
		noteTweenY('hmoment4', 7, 50, 0.01, 'linear')
	end
	if curStep == 2921 then
		noteTweenAlpha('oppo334', 1, 0, 4, 'linear')
		if rus == true then
		setTextString('difficulty', 'вп умер это очень грустно')
		end
		if eng == true then
		setTextString('difficulty', 'ac died thsi so sad')
		end
	end
	if curStep == 2975 then
		stopSound('vkafslhjkghafs')
		playSound('lookatmyface', 0.1, 'vkafslhjkghafs')
	end
	end
end
function onBeatHit()
	if curBeat > 135 and curBeat < 264 then
		triggerEvent('Add Camera Zoom', '0.01', '0.025')
		objectPlayAnimation('fuckers','dance',true)
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
	if (curBeat > 455 and curBeat < 468) or (curBeat > 471 and curBeat < 488) or (curBeat > 491 and curBeat < 520) then
		triggerEvent('Add Camera Zoom', '0.06', '0.05')
		objectPlayAnimation('fuckers','dance',true)
		if getProperty('dad.animation.curAnim.name') == 'idle' then
					characterPlayAnim('dad', 'idle', true)
		end
	end
	if curBeat > 583 and curBeat < 696 then
		triggerEvent('Add Camera Zoom', '0.03', '0.03')
		objectPlayAnimation('fuckers','dance',true)
	end
end
function onUpdate()
	if curStep > 2335 and curStep < 2847 then
		songPos = getSongPosition()
	local currentBeat = (songPos/1000)*(bpm/80)
		doTweenAlpha('thej', 'bfmomen', 0.5-0.3*math.sin((currentBeat*0.25)*math.pi),0.001)
	end
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end
end