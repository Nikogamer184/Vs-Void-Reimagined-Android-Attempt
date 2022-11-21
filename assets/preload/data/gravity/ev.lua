function onStepHit()
if not lowQuality then
	if curStep == 1024 then
		setProperty('defaultCamZoom', 0.75)
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
	end
	if curStep == 1088 then
		setProperty('defaultCamZoom', 0.7)
		noteTweenY('oppo00', 0, 800, 1, 'sineIn')
		noteTweenY('oppo11', 1, 800, 1, 'sineIn')
		noteTweenY('oppo22', 2, 800, 1, 'sineIn')
		noteTweenY('oppo33', 3, 800, 1, 'sineIn')
		if downscroll then
		noteTweenY('oppo00', 0, -200, 1, 'sineOut')
		noteTweenY('oppo11', 1, -200, 1, 'sineOut')
		noteTweenY('oppo22', 2, -200, 1, 'sineOut')
		noteTweenY('oppo33', 3, -200, 1, 'sineOut')
		end
	end
	if curStep == 1340 then
		stopSound('breakfade')
		playSound('breakfade', 1, 'breakfade')
	end
	if curStep == 1344 then
		doTweenAlpha('thescreen', 'thescreen', 1, 1.7, 'sineIn')
	end	
	if curStep == 1358 then
		stopSound('bgbreak')
		playSound('bgbreak', 1, 'bgbreak')
	end
	if curStep == 1360 then
		setProperty('cum.alpha', 1)
		doTweenAlpha('je', 'cum', 0, 1, 'linear')
		setProperty('camGame.zoom', 0.8)
		setProperty('defaultCamZoom', 0.8)
		objectPlayAnimation('backbroken','break1',true)
		setProperty('fuckersbutscaredsomehow.alpha', 1)
		removeLuaSprite('fuckers')
		setProperty('back4.alpha', 0)
		if rus == true then
		setTextString('difficulty', 'погоди че с таймером???')
		end
		if eng == true then
		setTextString('difficulty', "wait what's up with the timer???")
		end
		setProperty('thescreen.alpha', 0)
		setProperty('backflash.alpha', 0.5)
	end
	if curStep == 1456 then
		setProperty('cameraSpeed', 1.5);
	end
	if curStep == 1464 then
		setProperty('camGame.zoom', 1)
		setProperty('defaultCamZoom', 1)

setProperty('camFollowPos.x',525)
setProperty('camFollowPos.y',430)
setProperty('camFollow.x',525)
setProperty('camFollow.y',430)
setProperty('camGame.scroll.x',525)
setProperty('camGame.scroll.y',430)
	end
	if curStep == 1468 then
		setProperty('camGame.zoom', 1.1)
		setProperty('defaultCamZoom', 1.1)

setProperty('camFollowPos.x',450)
setProperty('camFollowPos.y',400)
setProperty('camFollow.x',450)
setProperty('camFollow.y',400)
setProperty('camGame.scroll.x',450)
setProperty('camGame.scroll.y',400)
setProperty('health', 1)
setProperty('dad.alpha', 0.0001)
setProperty('boyfriend.alpha', 0.0001)
	for i=7,4,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0) -- ААА 800
	end
		if rus == true then
		setTextString('difficulty', 'КАК ОН ЭТО СДЕЛАЛ')
		end
		if eng == true then
		setTextString('difficulty', "HOW DID HE DO THAT")
		end
	end
	if curStep == 1472 then
	setCharacterX('gf', 850)
	setCharacterY('gf', 100)
	setProperty('back3.alpha', 1)
	setProperty('back4.alpha', 1)
	setProperty('back1.alpha', 1)
	setProperty('back2.alpha', 1)
	setProperty('back22.alpha', 1)
setProperty('dad.alpha', 1)
setProperty('gf.alpha', 0.2)
setProperty('boyfriend.alpha', 1)
setProperty('camFollowPos.x',600)
setProperty('camFollowPos.y',460)
setProperty('camFollow.x',600)
setProperty('camFollow.y',460)
setProperty('camGame.scroll.x',600)
setProperty('camGame.scroll.y',460)
		setProperty('camGame.zoom', 0.85)
		setProperty('defaultCamZoom', 0.85)
		setProperty('fuckersbutscaredsomehow.alpha', 0)
		setProperty('black2.alpha', 1)
		doTweenAlpha('je', 'black2', 0, 1, 'linear')
		setProperty('bfmomen.alpha', 0.5)
		setProperty('timeBar.alpha', 0)
		setProperty('timeTxt.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
		setProperty('heavyisdead.alpha', 1)
		setProperty('fuckers2.alpha', 1)
		setTextString('difficulty', '')
		setProperty('cameraSpeed', 1.5);
		setProperty('thescreen.alpha', 0.5)
		removeLuaSprite('backflash')
		setProperty('black3.alpha', 1)
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
		
		--the notes
				noteTweenX('oppo4', 4, 410, 0.00001, 'circInOut')
				noteTweenX('oppo5', 5, 522, 0.00001, 'circInOut')
				noteTweenX('oppo6', 6, 633, 0.00001, 'circInOut')
				noteTweenX('oppo7', 7, 745, 0.00001, 'circInOut')
				noteTweenAlpha('oppo00', 4, 1, 0.5, 'sineIn')
				noteTweenAlpha('oppo11', 5, 1, 0.5, 'sineIn')
				noteTweenAlpha('oppo22', 6, 1, 0.5, 'sineIn')
				noteTweenAlpha('oppo33', 7, 1, 0.5, 'sineIn')
	end
	if curStep == 1696 then
	setCharacterX('gf', 500)
	setCharacterY('gf', 130)
		setProperty('heavyisdead.alpha', 0)
		setProperty('fuckers2.alpha', 0)
	setProperty('back3.alpha', 0)
	setProperty('back4.alpha', 0)
	setProperty('back1.alpha', 0)
	setProperty('back2.alpha', 0)
	setProperty('back22.alpha', 0)
		setProperty('camGame.zoom', 0.7)
		setProperty('defaultCamZoom', 0.7)
		setProperty('cum.alpha', 1)
		doTweenAlpha('je', 'cum', 0, 1, 'linear')
		setProperty('fuckersbutscaredsomehow.alpha', 1)
		setProperty('bfmomen.alpha', 0)
		setProperty('timeBar.alpha', 1)
		setProperty('timeTxt.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
		setProperty('iconP1.alpha', 1)
		setProperty('iconP2.alpha', 1)
		setProperty('healthBar.alpha', 1)
		setProperty('thehealth.alpha', 1)
		setProperty('thescreen.alpha', 0)
		setProperty('black3.alpha', 0)
		setProperty('boyfriend.alpha', 1)
setProperty('gf.alpha', 1)
		if rus == true then
		setTextString('difficulty', 'охринеть инди кросс очень оригинально')
		end
		if eng == true then
		setTextString('difficulty', 'holy shit indie cross very original')
		end
				noteTweenX('oppo4', 4, 710, 0.00001, 'circInOut')
				noteTweenX('oppo5', 5, 820, 0.00001, 'circInOut')
				noteTweenX('oppo6', 6, 930, 0.00001, 'circInOut')
				noteTweenX('oppo7', 7, 1040, 0.00001, 'circInOut')
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
	end
	end
	
	if curBeat > 82 and curBeat < 127 or curBeat > 210 and curBeat < 255 or curBeat > 338 and curBeat < 367 or curBeat > 562 then
		setProperty('camZooming', false)
	end
end
function onUpdate()
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end
end