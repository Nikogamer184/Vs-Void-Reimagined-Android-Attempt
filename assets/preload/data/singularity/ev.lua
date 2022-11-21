function onSongStart()
	setProperty('thescreen.alpha', 0.2)
	doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
end
function onStepHit()
if not lowQuality then
	if (curBeat > 1 and curBeat < 135) or (curBeat > 394 and curBeat < 431) or (curBeat > 523 and curBeat < 527)or (curBeat > 530 and curBeat < 535) or (curBeat > 539 and curBeat < 543) or (curBeat > 547 and curBeat < 551)or (curBeat > 714) then
		setProperty('camZooming', false)
	end
	if curStep == 16 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 24 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 32 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 96 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 152 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 160 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 192 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 224 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 256 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 272 then
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 280 then
	setProperty('thescreen.alpha', 0.2)
	doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 282 then
		setProperty('cameraSpeed', 2);
		setProperty('defaultCamZoom', 1)
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'sineOut')
		if rus == true then
		setTextString('difficulty', 'удачи с ним')
		end
		if eng == true then
		setTextString('difficulty', 'good luck with him')
		end
	end
	if curStep == 288 then
		setProperty('defaultCamZoom', 0.7)
		--doTweenZoom('jeje', 'camGame', 0.7, 0.1, 'sineOut')
		setProperty('camGame.zoom', 0.7)
	end
	if curStep == 541 then
		stopSound('bgbreakFUCKYOUPAUSE')
		playSound('bgbreak', 1, 'bgbreakFUCKYOUPAUSE')
	end
	if curStep == 544 then
		setProperty('back22.alpha', 0)
		setProperty('defaultCamZoom', 0.9)
		setProperty('cum.alpha', 1)
		doTweenAlpha('hehehe', 'cum', 0, 1, 'linear')
		if rus == true then
		setTextString('difficulty', 'да у него сильное убавление хп поплачь об этом')
		end
		if eng == true then
		setTextString('difficulty', 'yeah he has a strong health drain cry about it')
		end
	objectPlayAnimation('backbroken','break1',true)
	objectPlayAnimation('bgglitch','glitchy',true)
	setProperty('thescreen.alpha', 0)
	end
	if curStep == 800 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 924 then
		setProperty('defaultCamZoom', 1)
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'sineOut')
	end
	if curStep == 928 then
		setProperty('defaultCamZoom', 0.8)
		--doTweenZoom('jeje', 'camGame', 0.8, 0.1, 'sineOut')
		setProperty('camGame.zoom', 0.8)
	end
	if curStep == 1024 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 1056 then
	objectPlayAnimation('bgglitch','idle',true)
	end
	if curStep == 1560 then
		setProperty('defaultCamZoom', 1)
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'sineOut')
		if rus == true then
		setTextString('difficulty', 'кста для русских, я как-то предсказал обнову оригинального мода лол')
		end
		if eng == true then
		setTextString('difficulty', 'btw for americans out there, i did this in 5 months')
		end
	end
	if curStep == 1568 then
		setProperty('defaultCamZoom', 0.7)
		--doTweenZoom('jeje', 'camGame', 0.7, 0.1, 'sineOut')
		setProperty('camGame.zoom', 0.7)
	end
	if curStep == 1572 then
		doTweenZoom('jeje', 'camGame', 0.85, 4.5, 'quadInOut')
	end
	if curStep == 1632 then
		doTweenZoom('jeje', 'camGame', 0.7, 4.8, 'sineOut')
	end
	if curStep == 1688 then
		setProperty('defaultCamZoom', 0.75)
		doTweenZoom('jeje', 'camGame', 0.75, 0.1, 'sineOut')
	end
	if curStep == 1696 then
		setProperty('defaultCamZoom', 0.7)
		--doTweenZoom('jeje', 'camGame', 0.7, 0.1, 'sineOut')
		setProperty('camGame.zoom', 0.7)
	end
	if curStep == 1821 then
		stopSound('bgbreakFUCKYOUPAUSE')
		playSound('bgbreak', 1, 'bgbreakFUCKYOUPAUSE')
	end
	if curStep == 1824 then
		setProperty('back3.alpha', 0)
		setProperty('back2.alpha', 0)
		doTweenZoom('jeje', 'camGame', 0.9, 0.1, 'sineOut')
		setProperty('defaultCamZoom', 0.9)
		setProperty('cum.alpha', 1)
		doTweenAlpha('hehehe', 'cum', 0, 1, 'linear')
	objectPlayAnimation('backbroken','break2',true)
	objectPlayAnimation('bgglitch','glitchy',true)
	setProperty('thescreen.alpha', 0)
	end
	if curStep == 1872 then
		setProperty('defaultCamZoom', 1)
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'linear')
	end
	if curStep == 1888 then
		setProperty('defaultCamZoom', 0.9)
		doTweenZoom('jeje', 'camGame', 0.9, 0.1, 'linear')
	end
	if curStep == 1936 then
		setProperty('defaultCamZoom', 1)
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'linear')
	end
	if curStep == 1954 then
			setProperty('timeBar.alpha', 0)
			setProperty('timeTxt.alpha', 0)
		doTweenAngle('glitch1', 'camGame', 30, 0.1, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', -30, 0.1, 'sineOut')
	setProperty('thescreen.alpha', 1)
	end
	if curStep == 1957 then
		doTweenAngle('glitch1', 'camGame', -60, 0.1, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', 60, 0.1, 'sineOut')
	end
	if curStep == 1960 then
		doTweenAngle('glitch1', 'camGame', -90, 0.1, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', 90, 0.1, 'sineOut')
	end
	if curStep == 1963 then
		doTweenAngle('glitch1', 'camGame', 120, 0.1, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', -120, 0.1, 'sineOut')
	end
	if curStep == 1966 then
		doTweenAngle('glitch1', 'camGame', -180, 0.1, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', 180, 0.1, 'sineOut')
	end
	if curStep == 1968 then
		doTweenAngle('glitch1', 'camGame', 0, 0.3, 'sineOut')
		doTweenAngle('glitch2', 'camHUD', 0, 0.3, 'sineOut')
		doTweenAlpha('thescreen', 'thescreen', 0.5, 0.5, 'linear')
		if rus == true then
		setTextString('difficulty', 'экран делает бррр')
		end
		if eng == true then
		setTextString('difficulty', 'screen goes brrrr')
		end
	end
	if curStep == 2080 then
			setProperty('timeBar.alpha', 1)
			setProperty('timeTxt.alpha', 1)
		setProperty('defaultCamZoom', 0.7)
		objectPlayAnimation('bgglitch','idle',true)
	doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
	end
	if curStep == 2304 then
		doTweenAlpha('thescreen', 'thescreen', 1, 2.2, 'sineIn')
	end
	if curStep == 2328 then
		--doTweenZoom('jeje', 'camGame', 1, 0.2, 'sineOut')
		setProperty('defaultCamZoom', 1)
	end
	if curStep == 2315 then
		stopSound('breakfadeFUCKYOUPAUSE')
		playSound('breakfade', 1, 'breakfadeFUCKYOUPAUSE')
	end
	if curStep == 2328 then
		noteTweenX('oppo4', 4, 410, 0.5, 'sineIn')
		noteTweenX('oppo5', 5, 522, 0.5, 'sineIn')
		noteTweenX('oppo6', 6, 633, 0.5, 'sineIn')
		noteTweenX('oppo7', 7, 745, 0.5, 'sineIn')
	end
	if curStep == 2333 then
		stopSound('bgbreakFUCKYOUPAUSE')
		playSound('bgbreak', 1, 'bgbreakFUCKYOUPAUSE')
	end
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