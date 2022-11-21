local allowCountdown = false
local canskip = false
local dialstage = -999999999

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and isStoryMode then
        
		setProperty('inCutscene', true);
		setProperty('camGame.zoom', 0.7)
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('epekup.alpha', 0)
		setProperty('back22.alpha', 0)
		setProperty('epekdown.alpha', 0)
		setProperty('miss.alpha', 0)
		setProperty('cut.alpha', 1)
		setProperty('black2.alpha', 1)
		runTimer('whoaPrecountdownanim', 0.5, 1)
		allowCountdown = true;
		return Function_Stop;
	end
	if not allowCountdown then
		setProperty('skipCountdown', true)
		runTimer('animPlayed', 0.5, 1)
		allowCountdown = true
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end
	if keyJustPressed('space') and canskip == true then
		dialstage = dialstage + 1
		playSound('skiptext', 1)
		setProperty('arrow.x', 1300)
		doTweenX('gobackarrow', 'arrow', 1250, 0.5, 'sineOut')
	end
	if keyJustPressed('back') and canskip == true then
		playSound('skiptext', 1)
		dialstage = 23
		doTweenX('gobackarrow', 'arrow', 3000, 0.5, 'sineIn')
		doTweenAlpha('goawayarrow', 'arrow', 0, 0.5, 'sineIn')
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = false
		runTimer('dial2', 3, 1)
		runTimer('dial2.1', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'norm', true)
	if rus == true then
	setTextString('word1', 'Ты зашел уже далеко.')
	end
	if eng == true then
	setTextString('word1', 'You went too far.')
	end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	setProperty('l.alpha', 1)
	setProperty('l2.alpha', 1)
    setTextColor('word1', 'A02D82')
    setTextColor('word2', 'A02D82')
    setTextColor('word3', 'A02D82')
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		runTimer('dial3', 3, 1)
		runTimer('dialthe3', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
    setTextString('word1', 'Надеюсь ты сейчас доволен...')
		end
	if eng == true then
	setTextString('word1', "I hope you're happy now...")
	end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		runTimer('dial4', 2, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
    setTextString('word1', 'Я могу в буквальном смысле разорвать 7 галактик.')
		end
		if eng == true then
    setTextString('word1', 'I can literally tear apart 7 solar systems.')
		end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	end
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial5', 2, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
    setTextString('word1', 'Это тот вызов, который ты хотел?')
		end
		if eng == true then
    setTextString('word1', 'Is this the challenge you wanted?')
		end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('b.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		pauseSound('amongus')
		runTimer('dial6', 3, 1)
		runTimer('dial6.1', 0.75, 1)
		runTimer('dial6.2', 1.25, 1)
		playSound('voices/boh', 1)
		objectPlayAnimation('b', 'umm', true)
		characterPlayAnim('dad', 'kid named', true)
		setProperty('dad.specialAnim', true)
		if rus == true then
    setTextString('word1', 'где моя гф???????????????????????????????????????????????????????????????')
		end
		if eng == true then
    setTextString('word1', 'where my gf???????????????????????????????????????????????????????????????')
		end
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('v.alpha', 0)
		setProperty('b.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
    setTextColor('word1', '00A6E2')
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
		doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
		doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		resumeSound('amongus')
		runTimer('dial7', 3, 1)
		runTimer('dialthe7', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'norm', true)
		if rus == true then
    setTextString('word1', 'Забей на все это.')
		end
		if eng == true then
    setTextString('word1', 'Forget about it all.')
		end	
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
    setTextColor('word1', 'A02D82')
    setTextColor('word2', 'A02D82')
    setTextColor('word3', 'A02D82')
		doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
		doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 13 then
		dialstage = 14
		canskip = false
		runTimer('dial8', 3, 1)
		runTimer('dialthe8', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'norm', true)
		if rus == true then
    setTextString('word1', 'Перед тобой стоит физическое олицетворение чёрной дыры.')
		end
		if eng == true then
    setTextString('word1', 'Before you stands the physical avatar of the abyss.')
		end
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 15 then
		dialstage = 16
		canskip = false
		runTimer('dial9', 3, 1)
		runTimer('dialthe9', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
    setTextString('word1', 'И пока я не возьму КАЖДУЮ душу вселенной в свои руки...')
		end
		if eng == true then
    setTextString('word1', "And until I'll take EVERY soul of universe in my hands...")
		end
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 17 then
		dialstage = 18
		canskip = false
		runTimer('dialdial1', 3, 1)
		runTimer('dialdialthe1', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'norm', true)
		if rus == true then
    setTextString('word1', 'Ты не уйдёшь отсюда.')
		end
		if eng == true then
    setTextString('word1', 'You will not leave.')
		end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 19 then
		dialstage = 20
		canskip = false
		runTimer('dialdial2', 3, 1)
		runTimer('dialdialthe2', 1.5, 1)
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
    setTextString('word1', 'Вот тебе вызов, который ты хотел.')
		end
		if eng == true then
    setTextString('word1', "Here's the challenge you wanted.")
		end
    setTextString('word2', '')
    setTextString('word3', '')
	setTextColor('word2', '3A0444')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 21 then
		dialstage = 22
		canskip = false
    setTextString('word3', "")
		runTimer('dialdial3', 0.0001, 1)
		runTimer('hehehaha', 3, 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 23 then
		dialstage = 24
		canskip = false
		runTimer('animPlayed', 0.3, 1)
		doTweenAlpha('bye1', 'box', 0, 0.5, 'linear')
		doTweenAlpha('byebf', 'b', 0, 0.5, 'linear')
		doTweenAlpha('byevoid', 'v', 0, 0.5, 'linear')
		doTweenAlpha('bye3', 'arrow', 0, 0.5, 'linear')
		doTweenAlpha('bye4', 'word1', 0, 0.5, 'linear')
		doTweenAlpha('bye44', 'word2', 0, 0.5, 'linear')
		doTweenAlpha('bye444', 'word3', 0, 0.5, 'linear')
		doTweenAlpha('bye5', 'l', 0, 0.5, 'linear')
		doTweenAlpha('bye6', 'l2', 0, 0.5, 'linear')
		soundFadeOut('amongus', 0.5, 0)
	end
end



function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whoaPrecountdownanim' then
		playSound('Ambience', 1, 'AFSDHAFSHOIFAS')
		runTimer('whoaPrecountdownanim2', 3, 1)
		objectPlayAnimation('cut','glitch1',true)
		playSound('glitch', 1)
		playSound('Buildup', 1)
		setProperty('black3.alpha', 1)
		doTweenAlpha('byebyee', 'black3', 0, 2, 'linear')
		doTweenZoom('oh', 'camGame', 0.8, 0.5, 'sineOut')
		triggerEvent('Screen Shake', '0.2, 0.002', '0, 0');
	end
	if tag == 'whoaPrecountdownanim2' then
		runTimer('whoaPrecountdownanim3', 3.75, 1)
		objectPlayAnimation('cut','glitch2',true)
		playSound('glitch', 1)
		setProperty('black3.alpha', 1)
		doTweenAlpha('byebyee', 'black3', 0, 2, 'linear')
		doTweenZoom('my', 'camGame', 0.9, 0.5, 'sineOut')
		triggerEvent('Screen Shake', '0.2, 0.002', '0, 0');
	end
	if tag == 'whoaPrecountdownanim3' then
		runTimer('whoaPrecountdownanim4', 3.5, 1)
		objectPlayAnimation('cut','glitch3',true)
		playSound('glitch', 1)
		setProperty('black3.alpha', 1)
		doTweenAlpha('byebyee', 'black3', 0, 2, 'linear')
		triggerEvent('Screen Shake', '3.5, 0.002', '0, 0');
		doTweenZoom('oh', 'camGame', 1, 0.5, 'sineOut')
	end
	if tag == 'whoaPrecountdownanim4' then
		runTimer('whoaPrecountdownanim5', 2, 1)
	end
	if tag == 'whoaPrecountdownanim5' then
		runTimer('whoaPrecountdownanim6', 2, 1)
		playSound('glitch', 1)
		objectPlayAnimation('cut', 'bye', true)
		doTweenAlpha('byebyee', 'black3', 0, 0.1, 'linear')
	end
	if tag == 'whoaPrecountdownanim6' then
		objectPlayAnimation('cut', 'screech', true)
		runTimer('whoaPrecountdownanim7', 5, 1)
		playSound('screech', 1)
		setProperty('black3.alpha', 1)
		doTweenAlpha('byebyee', 'black3', 0, 4, 'linear')
		setProperty('particles.alpha', 1)
		triggerEvent('Screen Shake', '5, 0.008', '0, 0');
		doTweenZoom('god', 'camGame', 1.35, 5, 'sineOut')
		doTweenAlpha('hehehe', 'cum', 1, 5, 'linear')
	end
	if tag == 'whoaPrecountdownanim7' then
		doTweenZoom('god', 'camGame', 0.7, 0.1, 'linear')
		doTweenAlpha('byebye', 'cut', 0, 0.0001, 'linear')
		doTweenAlpha('byebyebye', 'particles', 0, 0.0001, 'linear')
		setProperty('cut.alpha', 0)
		doTweenAlpha('hehehe', 'cum', 0, 1, 'sineOut')
		runTimer('dial0', 3, 1)
		doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
		doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if tag == 'dial0' then
	runTimer('dial1', 0.5, 1)
	doTweenAlpha('jjjj', 'black2', 0.5, 1, 'linear')
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
		playSound('FinalAmbience', 0.7, 'amongus')
		setProperty('epekup.alpha', 1)
		setProperty('epekdown.alpha', 1)
		setProperty('back22.alpha', 1)
	end
	if tag == 'dial1' then
		dialstage = 1
	end
	if tag == 'dial2.1' then
	if rus == true then
    setTextString('word2', 'И выбесил меня ОЧЕНЬ. СИЛЬНО.')
	end
	if eng == true then
    setTextString('word2', "And pissed me off SO. MUCH.")
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dial2' then
		canskip = true
	end
	if tag == 'dialthe3' then
	if rus == true then
    setTextString('word2', 'Писклявая ошибка вселенной.')
	end
	if eng == true then
    setTextString('word2', 'Squeaky error of the universe.')
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dial3' then
		canskip = true
	end
	if tag == 'dial4' then
		canskip = true
	end
	if tag == 'dial5' then
		canskip = true
	end
	if tag == 'dial6.1' then
		playSound('voices/boh', 1)
		objectPlayAnimation('b', 'umm', true)
		if rus == true then
    setTextString('word2', 'что стало с бумбоксом??????????????????')
		end
		if eng == true then
    setTextString('word2', 'what happened to boombox??????????????????')
		end
	end
	if tag == 'dial6.2' then
		playSound('voices/boh', 1)
		objectPlayAnimation('b', 'umm', true)
		if rus == true then
    setTextString('word3', 'и с твоими охранниками?')
		end
		if eng == true then
    setTextString('word3', 'and your security guys?')
		end
	end
	if tag == 'dial6' then
		canskip = true
	end
	if tag == 'dialthe7' then
	if rus == true then
    setTextString('word2', 'Мы с тобой в другом измерении.')
	end
	if eng == true then
    setTextString('word2', 'We are in another dimension.')
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'norm', true)
	end
	if tag == 'dial7' then
		canskip = true
	end
	if tag == 'dialthe8' then
	if rus == true then
    setTextString('word2', 'Которое такое же мощное, как TCI.')
	end
	if eng == true then
    setTextString('word2', 'Which is as powerful, as TCI.')
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dial8' then
		canskip = true
	end
	if tag == 'dialthe9' then
	if rus == true then
    setTextString('word2', 'Пока я не буду удовлетворён своими действиями...')
	end
	if eng == true then
    setTextString('word2', "Until I'm gonna be pleasant by my actions...")
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dial9' then
		canskip = true
	end
	if tag == 'dialdialthe1' then
	if rus == true then
    setTextString('word2', 'Даже если потеряешь конечность или две.')
	end
	if eng == true then
    setTextString('word2', "Even if you'll lose a limb or two.")
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dialdial1' then
		canskip = true
	end
	if tag == 'dialdialthe2' then
	if rus == true then
    setTextString('word2', 'Давай же.')
	end
	if eng == true then
    setTextString('word2', 'Come on.')
	end
		playSound('voices/ac', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dialdial2' then
		canskip = true
	end
	if tag == 'hehehaha' then
		runTimer('animPlayed', 0.1, 1)
		doTweenAlpha('bye1', 'box', 0, 0.5, 'linear')
		doTweenAlpha('bye2', 'v', 0, 0.5, 'linear')
		doTweenAlpha('byeb', 'b', 0, 0.5, 'linear')
		doTweenAlpha('bye3', 'arrow', 0, 0.5, 'linear')
        doTweenAlpha('bye4', 'word1', 0, 0.5, 'linear')
        doTweenAlpha('bye44', 'word2', 0, 0.5, 'linear')
        doTweenAlpha('bye444', 'word3', 0, 0.5, 'linear')
		doTweenAlpha('bye5', 'l', 0, 0.5, 'linear')
        doTweenAlpha('bye6', 'l2', 0, 0.5, 'linear')
		doTweenZoom('zoomyzoom', 'camGame', 0.7, 3, 'sineInOut')
		doTweenZoom('zoomyzoom2', 'camHUD', 1, 3, 'sineInOut')
		
	end
    
    if tag == 'animPlayed' then -- Animation played, countdown now, and [runTimer('animPlayed', 1, 1)] just for backup
	setProperty('skipCountdown',true)
        startCountdown();
		doTweenAlpha('hiscore', 'scoreTxt', 1, 0.5, 'linear')
		doTweenAlpha('hip1', 'iconP1', 1, 0.5, 'linear')
		doTweenAlpha('hip2', 'iconP2', 1, 0.5, 'linear')
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
		doTweenAlpha('hihealth', 'healthBar', 1, 0.5, 'linear')
		doTweenAlpha('hihealth2', 'thehealth', 1, 0.5, 'linear')
	for i=3,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 800)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
		end
	end
    end
	if tag == 'dialdial3' then
		runTimer('2', 0.25, 1)
		playSound('voices/acmad', 1)
		objectPlayAnimation('v', 'yell', true)
		stopSound('amongus')
	setTextColor('word1', '3A0444')
	setTextColor('word2', '3A0444')
	setTextSize('word1', 40)
	setTextSize('word2', 40)
	if rus == true then
    setTextString('word1', 'СТОЛКНИСЬ ')
	end
	if eng == true then
    setTextString('word1', 'FACE ')
	end
    setTextString('word2', '')
		triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004');
		doTweenZoom('zoomyzoom', 'camGame', 0.72, 0.1, 'linear')
		doTweenZoom('zoomyzoom2', 'camHUD', 1.02, 0.1, 'linear')
	end
	if tag == '2' then
		runTimer('3', 0.25, 1)
		playSound('voices/acmad', 1)
		if rus == true then
    setTextString('word1', 'СТОЛКНИСЬ С НАСТОЯЩЕЙ')
		end
		if eng == true then
    setTextString('word1', 'FACE THE REAL')
		end
    setTextString('word2', '')
		triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004');
		doTweenZoom('zoomyzoom', 'camGame', 0.74, 0.1, 'linear')
		doTweenZoom('zoomyzoom2', 'camHUD', 1.04, 0.1, 'linear')
	end
	if tag == '3' then
		runTimer('4', 0.25, 1)
		playSound('voices/acmad', 1)
		if rus == true then
    setTextString('word2', 'ВСЕ-')
		end
		if eng == true then
    setTextString('word2', 'ALL-')
		end
		triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004');
		doTweenZoom('zoomyzoom', 'camGame', 0.76, 0.1, 'linear')
		doTweenZoom('zoomyzoom2', 'camHUD', 1.06, 0.1, 'linear')
	end
	if tag == '4' then
		runTimer('5', 0.25, 1)
		playSound('voices/acmad', 1)
		if rus == true then
    setTextString('word2', 'ВСЕ-ПОЖИРАЮЩЕЙ')
		end
		if eng == true then
    setTextString('word2', 'ALL-CONSUMING')
		end
		triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004');
		doTweenZoom('zoomyzoom', 'camGame', 0.78, 0.1, 'linear')
		doTweenZoom('zoomyzoom2', 'camHUD', 1.08, 0.1, 'linear')
	end
	if tag == '5' then
		playSound('voices/acmad', 1)
		if rus == true then
    setTextString('word2', 'ВСЕ-ПОЖИРАЮЩЕЙ ПУСТОТОЙ!')
		end
		if eng == true then
    setTextString('word2', 'ALL-CONSUMING VOID!')
		end
		triggerEvent('Screen Shake', '0.1, 0.004', '0.1, 0.004');
		doTweenZoom('zoomyzoom', 'camGame', 0.8, 0.1, 'linear')
		doTweenZoom('zoomyzoom2', 'camHUD', 1.1, 0.1, 'linear')
	end
end
function onSoundFinished(tag)
	if tag == 'AFSDHAFSHOIFAS' then
		objectPlayAnimation('cut','death',true)
		playSound('death', 1)
		setProperty('black3.alpha', 1)
		doTweenZoom('my', 'camGame', 0.8, 0.0001, 'linear')
		triggerEvent('Screen Shake', '0.000001, 0.00001', '0, 0');
	end
end