local allowCountdown = false
local canskip = false
local dialstage = -999999999

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then 
        
		setProperty('inCutscene', true);
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('scoreTxt.alpha', 0)
		runTimer('whoaPrecountdownanim', 1, 1)
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
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
		dialstage = 21
		doTweenX('gobackarrow', 'arrow', 3000, 0.5, 'sineIn')
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = false
		runTimer('dial2', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
	setTextString('word1', 'Я и не думал, что если ты пищишь как игрушка для собак,')
	setTextString('word2', 'то можешь буквально стать "богом".')
	end
	if eng == true then
	setTextString('word1', "I wouldn't even think if you could squeak like a dog's toy,")
	setTextString('word2', 'you could become a literal "god".')
	end
	setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	setProperty('l.alpha', 1)
	setProperty('l2.alpha', 1)
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
		playSound('tf2dialoguemusic', 0.3, 'hehhehhehhehe')
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		runTimer('dial3', 2, 1)
		runTimer('dial3.1', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
	setTextString('word1', 'Еще и вы двое приперлись сюда.')
	end
	if eng == true then
	setTextString('word1', 'Yet you both got here for no reason.')
	end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		runTimer('dial4', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
	setTextString('word1', 'Ладно, все в порядке, все в норме...')
	end
	if eng == true then
	setTextString('word1', 'Alright, all good, all fine...')
	end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('b.alpha', 0)
	setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
		setSoundVolume('hehhehhehhehe', 0.25)
	end
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial5', 3, 1)
		runTimer('dial5.1', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'dark', true)
		if rus == true then
		setTextString('word1', '...Я...')
		end
		if eng == true then
		setTextString('word1', '...I...')
		end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('b.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
		setSoundVolume('hehhehhehhehe', 0.2)
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		runTimer('dial6', 2, 1)
		runTimer('dial6.1', 0.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'crazy', true)
		if rus == true then
	setTextString('word1', '...особенно...')
		end
		if eng == true then
	setTextString('word1', '...especially...')
		end
	setTextString('word2', '')
	setTextString('word3', '')
		setProperty('v.alpha', 1)
		setProperty('b.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
		setSoundVolume('hehhehhehhehe', 0.1)
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		runTimer('dial7', 2, 1)
		runTimer('dial7.1', 1, 1)
		playSound('voices/bah', 1)
		objectPlayAnimation('b', 'umm', true)
		objectPlayAnimation('v', 'umm', true)
		if rus == true then
	setTextString('word1', '...особенно... какому-то... РЕБЁНКУ--')
	setTextString('word2', 'слушай, с тобой все в порядке бро?')
		end
		if eng == true then
	setTextString('word1', '...especially... to some... KID--')
	setTextString('word2', 'listen, are you alright there bro?')
		end
	setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 1)
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		setSoundVolume('hehhehhehhehe', 0.3)
	end
	if dialstage == 13 then
		dialstage = 14
		canskip = false
		runTimer('dial8', 2, 1)
		playSound('voices/sec', 1)
		objectPlayAnimation('b', 'boysnorm', true)
		if rus == true then
	setTextString('word1', 'Босс, малой уже получил свой реванш, тебе следует')
	setTextString('word2', 'его отпустить.')
		end
		if eng == true then
	setTextString('word1', 'Boss, little one got his rematch, you should')
	setTextString('word2', 'let him go.')
		end
	setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
    setTextColor('word1', 'A42DA9')
    setTextColor('word2', 'A42DA9')
    setTextColor('word3', 'A42DA9')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 500, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 400, 0.5, 'sineInOut');
	end
	if dialstage == 15 then
		dialstage = 16
		canskip = false
		runTimer('dial9', 2, 1)
		runTimer('dial9.1', 1, 1)
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
		objectPlayAnimation('b', 'boysumm', true)
		if rus == true then
	setTextString('word1', 'Босс, малой уже получил свой реванш, тебе следует--')
	setTextString('word2', 'А МОЖЕТ ЭТО "ТЕБЕ СЛЕДУЕТ" ЗАТКНУТЬСЯ?!')
		end
		if eng == true then
	setTextString('word1', 'Boss, little one got his rematch, you should--')
	setTextString('word2', 'MAYBE "YOU SHOULD" SHUT UP?!')
		end
	setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
    setTextColor('word2', '794385')
    setTextColor('word3', '794385')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
		stopSound('hehhehhehhehe')
	end
	if dialstage == 17 then
		dialstage = 18
		canskip = false
		runTimer('dialdial1', 3, 1)
		runTimer('dialdial1.1', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
	setTextString('word1', 'Слушай сюда, щас мы будем по-медленнее выступать.')
		end
		if eng == true then
	setTextString('word1', "Listen here, we're gonna sing out little slower.")
		end
	setTextString('word2', '')
	setTextString('word3', '')
    setTextColor('word1', '794385')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 19 then
		dialstage = 20
		canskip = false
		runTimer('dialdial2', 2.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
		if rus == true then
	setTextString('word1', 'И на этот раз мы будем в расчёте.')
		end
		if eng == true then
	setTextString('word1', "And this time we'll be on equal sides.")
		end
	setTextString('word2', '')
	setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2.5, 'linear')
	end
	if dialstage == 21 then
		dialstage = 22
		canskip = false
		runTimer('animPlayed', 0.1, 1)
		setProperty('skipCountdown',true)
		doTweenAlpha('bye1', 'box', 0, 0.5, 'linear')
		doTweenAlpha('byebf', 'b', 0, 0.5, 'linear')
		doTweenAlpha('byevoid', 'v', 0, 0.5, 'linear')
		doTweenAlpha('bye3', 'arrow', 0, 0.5, 'linear')
        doTweenAlpha('bye4', 'word1', 0, 0.5, 'linear')
        doTweenAlpha('bye44', 'word2', 0, 0.5, 'linear')
        doTweenAlpha('bye444', 'word3', 0, 0.5, 'linear')
		doTweenAlpha('bye5', 'l', 0, 0.5, 'linear')
		doTweenAlpha('bye6', 'l2', 0, 0.5, 'linear')
		soundFadeOut('hehhehhehhehe', 0.5, 0)
	end
end




function onTimerCompleted(tag, loops, loopsLeft)--hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
	if tag == 'whoaPrecountdownanim' then
		runTimer('dial1', 0.5, 1)
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
		doTweenAlpha('hehehehe', 'black2', 0.5, 1, 'linear')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if tag == 'dial1' then
		dialstage = 1
	end
	if tag == 'dial2' then
		canskip = true
	end
	if tag == 'dial3.1' then
	if rus == true then
	setTextString('word2', 'Дайте угадаю, услышали музыку, да?')
	end
	if eng == true then
	setTextString('word2', 'Let me guess, heard some music, right?')
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	end
	if tag == 'dial3' then
		canskip = true
	end
	if tag == 'dial4' then
		canskip = true
	end
	if tag == 'dial5.1' then
		runTimer('dial5.2', 1, 1)
		if rus == true then
		setTextString('word1', '...Я... не собираюсь проигрывать...')
		end
		if eng == true then
		setTextString('word1', '...I... will not lose...')
		end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'dark', true)
	end
	if tag == 'dial5.2' then
		if rus == true then
		setTextString('word1', '...Я... не собираюсь проигрывать... НИКОМУ!')
		end
		if eng == true then
		setTextString('word1', '...I... will not lose... to a NOBODY!')
		end
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	end
	if tag == 'dial5' then
		canskip = true
	end
	if tag == 'dial6.1' then
		runTimer('dial6.2', 1, 1)
		if rus == true then
	setTextString('word1', '...особенно... какому-то...')
		end
		if eng == true then
	setTextString('word1', '...especially... to some...')
		end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'crazy', true)
	end
	if tag == 'dial6.2' then
		if rus == true then
	setTextString('word1', '...особенно... какому-то... РЕБЁНКУ, ТЫ ЧЕРТОВА ШАВКА!')
		end
		if eng == true then
	setTextString('word1', '...especially... to some... KID, YOU DAMN MUTT!')
		end
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	end
	if tag == 'dial6' then
		dialstage = 11
	end
	if tag == 'dial7.1' then
	if rus == true then
	setTextString('word3', 'я как бы на один раунд соглашался')
	end
	if eng == true then
	setTextString('word3', 'i only agreed to one round')
	end
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'umm', true)
	end
	if tag == 'dial7' then
		canskip = true
	end
	if tag == 'dial8' then
		dialstage = 15
	end
	if tag == 'dial9.1' then
	if rus == true then
	setTextString('word1', 'Босс, малой уже получил свой реванш, тебе следует-- (мда)')
	setTextString('word3', 'Я В ПОЛНОМ ПОРЯДКЕ, РАЗВЕ НЕ ВИДНО?!')
	end
	if eng == true then
	setTextString('word1', 'Boss, little one got his rematch, you should-- (bruh)')
	setTextString('word3', "I'M ALL FINE, CANT YOU SEE?!")
	end
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	end
	if tag == 'dial9' then
		canskip = true
	end
	if tag == 'dialdial1.1' then
	if rus == true then
	setTextString('word2', 'А выступать будем столько, сколько возможно.')
	end
	if eng == true then
	setTextString('word2', "And we're gonna sing out as long as I can.")
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dialdial1' then
		canskip = true
	end
	if tag == 'dialdial2' then
		runTimer('dialend', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
		if rus == true then
	setTextString('word1', 'Врубай музыку уже.')
		end
		if eng == true then
	setTextString('word1', 'Turn up the music already.')
		end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
		setProperty('skipCountdown',true)
	end
	if tag == 'dialend' then
		runTimer('animPlayed', 0.1, 1)
		doTweenAlpha('bye1', 'box', 0, 0.5, 'linear')
		doTweenAlpha('bye2', 'v', 0, 0.5, 'linear')
		doTweenAlpha('bye3', 'arrow', 0, 0.5, 'linear')
		doTweenAlpha('bye4', 'word1', 0, 0.5, 'linear')
		doTweenAlpha('bye44', 'word2', 0, 0.5, 'linear')
		doTweenAlpha('bye444', 'word3', 0, 0.5, 'linear')
		doTweenAlpha('bye5', 'l', 0, 0.5, 'linear')
        doTweenAlpha('bye6', 'l2', 0, 0.5, 'linear')
	end
    
    if tag == 'animPlayed' then -- Animation played, countdown now, and [runTimer('animPlayed', 1, 1)] just for backup
        startCountdown();
		setProperty('skipCountdown',true)
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
		doTweenAlpha('hiscore', 'scoreTxt', 1, 0.5, 'linear')
		doTweenAlpha('hip1', 'iconP1', 1, 0.5, 'linear')
		doTweenAlpha('hip2', 'iconP2', 1, 0.5, 'linear')
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
		doTweenAlpha('hihealth', 'healthBar', 1, 0.5, 'linear')
		doTweenAlpha('hihealth2', 'thehealth', 1, 0.5, 'linear')
		soundFadeOut('hehhehhehhehe', 0.5, 0)
		runTimer('please shut the fuck up music', 0.5, 1)
	for i=3,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 800)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
		end
	end
    end
	if tag == 'please shut the fuck up music' then
		stopSound('hehhehhehhehe')
	end
end