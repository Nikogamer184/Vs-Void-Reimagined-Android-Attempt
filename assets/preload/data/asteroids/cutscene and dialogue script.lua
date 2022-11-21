local rus = false
local eng = false
local allowCountdown = false
local colorvoid = '940CF0'
local colorbf = '00A6E2'
local canskip = false
local dialstage = -999999999

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and isStoryMode then
        
		setProperty('inCutscene', true);
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
		setProperty('epekup.alpha', 0)
		setProperty('epekdown.alpha', 0)
		setProperty('black2.alpha', 1)
		runTimer('whoaPrecountdownanim', 1, 1)
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
if rus == true then
	setTextString('dialtutorial', 'Нажми пробел, чтобы продолжить диалог дальше. Если не хочешь смотреть диалог, нажми ESC. Линия внизу означает время, когда ты можешь пропустить диалог')
end
if eng == true then
	setTextString('dialtutorial', "Press space to continue dialogue. If you don't want to see the dialogue, press ESC. The line at bottom defines time, when you can skip/continue dialogue")
end
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
		dialstage = 15
		doTweenX('gobackarrow', 'arrow', 3000, 0.5, 'sineIn')
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = false
		runTimer('dial2', 2, 1)
		playSound('voices/v', 1)
		playSound('tf2dialoguemusic', 0.3, 'hehhehhehhehe')
		objectPlayAnimation('v', 'norm', true)
	doTweenAlpha('dialtutorial', 'dialtutorial', 1, 0.5, 'linear')
	setTextString('word3', '')
	setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	setProperty('l.alpha', 1)
	setProperty('l2.alpha', 1)
	setTextColor('word1', colorvoid)
	setTextColor('word2', colorvoid)
	setTextColor('word3', colorvoid)
	if rus == true then
	setTextString('word1', 'И это тот самый, кто победил знаменитого ДД')
	setTextString('word2', '4 месяца назад?')
	end
	if eng == true then
	setTextString('word1', "So that's the one, who won the infamous DD")
	setTextString('word2', '4 months ago?')
	end
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		runTimer('dial3', 2, 1)
		playSound('voices/v', 1)
	setTextString('word2', '')
	setTextString('word3', '')
		objectPlayAnimation('v', 'smug', true)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	doTweenAlpha('dialtutorial', 'dialtutorial', 0, 0.5, 'linear')
	if rus == true then
	setTextString('word1', 'У тебя, должно быть, достойная карьера, малой.')
	end
	if eng == true then
	setTextString('word1', 'I guess you got a decent career, little man.')
	end
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		runTimer('dial4', 2, 1)
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'norm', true)
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('b.alpha', 1)
	setProperty('v.alpha', 0)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	setTextColor('word1', colorbf)
	setTextColor('word2', colorbf)
	setTextColor('word3', colorbf)
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		pauseSound('hehhehhehhehe')
	if rus == true then
	setTextString('word1', 'закройся ты еще не видел на что я способен')
	end
	if eng == true then
	setTextString('word1', "shut up, you can't see what's comin' for ya")
	end
	end
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial5', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('b.alpha', 0)
		triggerEvent('Camera Follow Pos',600,460)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	setTextColor('word1', colorvoid)
	setTextColor('word2', colorvoid)
	setTextColor('word3', colorvoid)
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
		resumeSound('hehhehhehhehe')
	if rus == true then
	setTextString('word1', 'Окей, только не думай что я тебе сразу поверил...')
	end
	if eng == true then
	setTextString('word1', "Okay, but don't get too cocky, since I don't believe you...")
	end
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		runTimer('dial6', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'norm', true)
	setTextString('word2', '')
	setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	if rus == true then
	setTextString('word1', 'Всё равно лучше, что хотя бы ты пришёл.')
	end
	if eng == true then
	setTextString('word1', "I'm still glad that you at least came in.")
	end
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		runTimer('dial7', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'smug', true)
	setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	if rus == true then
	setTextString('word1', 'Да и на самом деле, кто вообще будет против')
	setTextString('word2', 'музыкальной дуели с такой малявкой как ты?')
	end
	if eng == true then
	setTextString('word1', 'And actually, who would even mind for a')
	setTextString('word2', 'rap battle with a midget like you?')
	end
	end
	if dialstage == 13 then
		dialstage = 14
		canskip = false
		runTimer('dial8', 2, 1)
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'ready', true)
	setTextString('word2', '')
	setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	setTextColor('word1', colorbf)
	setTextColor('word2', colorbf)
	setTextColor('word3', colorbf)
	setProperty('b.alpha', 1)
	setProperty('v.alpha', 0)
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		stopSound('hehhehhehhehe')
	if rus == true then
	setTextString('word1', 'я сказал закройся')
	end
	if eng == true then
	setTextString('word1', 'i said shut up')
	end
	end
	if dialstage == 15 then
		dialstage = 16
		canskip = false
		runTimer('animPlayed', 0.1, 1)
		doTweenAlpha('bye1', 'box', 0, 0.5, 'linear')
		doTweenAlpha('byebf', 'b', 0, 0.5, 'linear')
		doTweenAlpha('byevoid', 'v', 0, 0.5, 'linear')
		doTweenAlpha('bye3', 'arrow', 0, 0.5, 'linear')
		doTweenAlpha('bye4', 'word1', 0, 0.5, 'linear')
		doTweenAlpha('bye44', 'word2', 0, 0.5, 'linear')
		doTweenAlpha('bye444', 'word3', 0, 0.5, 'linear')
		doTweenAlpha('bye5', 'l', 0, 0.5, 'linear')
		doTweenAlpha('bye6', 'l2', 0, 0.5, 'linear')
	doTweenAlpha('dialtutorial', 'dialtutorial', 0, 0.5, 'linear')
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whoaPrecountdownanim' then
		runTimer('whoaPrecountdownanim2', 3, 1)
		playSound('lookwhogotnobitches', 1)
		if rus == true then
		doTweenAlpha('hi2', 'lookboys', 1, 1, 'sineOut')
		end
		if eng == true then
		doTweenAlpha('hi2', 'lookboyseng', 1, 1, 'sineOut')
		end
	end
	if tag == 'whoaPrecountdownanim2' then
		runTimer('whoaPrecountdownanim3', 2, 1)
		playSound('r.whoosh', 1)
		doTweenY('hi', 'cut', -100, 2, 'sineInOut')
		doTweenY('hi2', 'lookboys', -900, 2, 'sineInOut')
		doTweenY('hi22', 'lookboyseng', -900, 2, 'sineInOut')
	end
	if tag == 'whoaPrecountdownanim3' then
		runTimer('whoaPrecountdownanim4', 2, 1)
		objectPlayAnimation('cut','2',true)
		playSound('lookatmyface', 1)
	end
	if tag == 'whoaPrecountdownanim4' then
		runTimer('whoaPrecountdownanim5', 1, 1)
		objectPlayAnimation('cut','3',true)
	end
	if tag == 'whoaPrecountdownanim5' then
		canskip = false
		runTimer('dial1', 0.5, 1)
		setProperty('cut.alpha', 0)
		playSound('Cutaway', 1)
		setProperty('epekup.alpha', 1)
		setProperty('epekdown.alpha', 1)
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
		doTweenAlpha('hihihi', 'black2', 0.5, 1, 'linear')
		playSound('Holocrowd', 1, 'holoshutup')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
		setProperty('epekup.alpha', 1)
        setProperty('epekdown.alpha', 1)
	end
	if tag == 'dial1' then
		dialstage = 1
	end
	if tag == 'dial2' then
		canskip = true
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
	if tag == 'dial6' then
		canskip = true
	end
	if tag == 'dial7' then
		canskip = true
	end
	if tag == 'dial8' then
		canskip = true
	end
    
    if tag == 'animPlayed' then -- Animation played, countdown now, and [runTimer('animPlayed', 1, 1)] just for backup
        startCountdown();
		canskip = false
		doTweenAlpha('hiscore', 'scoreTxt', 1, 0.5, 'linear')
		doTweenAlpha('hip1', 'iconP1', 1, 0.5, 'linear')
		doTweenAlpha('hip2', 'iconP2', 1, 0.5, 'linear')
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
		doTweenAlpha('hihealth', 'healthBar', 1, 0.5, 'linear')
		doTweenAlpha('hihealth2', 'thehealth', 1, 0.5, 'linear')
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
		soundFadeOut('hehhehhehhehe', 0.5, 0)
		soundFadeOut('holoshutup', 0.5, 0)
	for i=3,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 800)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
		end
	end
    end
end