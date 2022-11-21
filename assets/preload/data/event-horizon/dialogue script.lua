local allowCountdown = false
local shutup = false
local canskip = false
local dialstage = -999999999

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and isStoryMode then
        
		setProperty('inCutscene', true);
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('scoreTxt.alpha', 0)
		setProperty('black2.alpha', 0.5)
		runTimer('whoaPrecountdownanim', 0.1, 1) -- change these for your animation lengths
		allowCountdown = true;
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
		runTimer('dial2', 2.5, 1)
		runTimer('dialthe2', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
	setTextString('word1', 'Ладно, знаешь что?')
	end
	if eng == true then
	setTextString('word1', 'Fine, you know what?')
	end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3.5, 'linear')
	setProperty('l.alpha', 1)
	setProperty('l2.alpha', 1)
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		runTimer('dial4', 4, 1)
		runTimer('dial4.1', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
	setTextString('word1', 'Думаешь что можешь просто выйти со своим')
	setTextString('word2', '"бип-буп" голосом и позорить МЕНЯ?')
	end
	if eng == true then
	setTextString('word1', 'Think you can just come out with your')
	setTextString('word2', '"beep-boop" voice and make ME look bad?')
	end
	setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 4, 'linear')
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		runTimer('dial6', 1, 1)
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	if rus == true then
	setTextString('word1', 'ТЫ КАК ТУТ ВООБЩЕ ДЫШИШЬ?! ЕЩЕ В КОСМОСЕ!')
	end
	if eng == true then
	setTextString('word1', 'HOW CAN YOU EVEN BREATHE OUT HERE?! IN SPACE!?')
	end
	setTextString('word2', '')
	setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
	end
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial7', 1, 1)
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'norm', true)
	if rus == true then
	setTextString('word1', 'Metal Gear Rising: Revengance - не слово в словаре. Это одна из моих любимых игр.')
	end
	if eng == true then
	setTextString('word1', "Metal Gear Rising: Revengance - it's not a word in a dictionary. It's also one of my favourite games.")
	end
	setTextString('word2', '')
	setTextString('word3', '')
		setProperty('v.alpha', 0)
		setProperty('b.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
    setTextColor('word1', '00A6E2')
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		playSound('medalqeensalad', 0.75, 'jjjjjjjjjjjjjj')
		characterPlayAnim('boyfriend','dontcare',true)
		setProperty('boyfriend.specialAnim', true);
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		runTimer('dial8', 2, 1)
		playSound('voices/sec', 1)
		objectPlayAnimation('b', 'boysnorm', true)
	if rus == true then
	setTextString('word1', 'Так, малой уже совсем начинает базарить.')
	setTextString('word2', 'Вам уже надо уходить отсюда.')
	end
	if eng == true then
	setTextString('word1', 'Okay, little one is already pissing him off.')
	setTextString('word2', "It's time for you both to get out of here.")
	end
	setTextString('word3', '')
		setProperty('v.alpha', 0)
		setProperty('b.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
    setTextColor('word1', 'A42DA9')
    setTextColor('word2', 'A42DA9')
    setTextColor('word3', 'A42DA9')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 1100, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 400, 0.5, 'sineInOut');
		setSoundVolume('jjjjjjjjjjjjjj', 0.25)
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		runTimer('dial9', 3, 1)
		runTimer('dial9.1', 1, 1)
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
		objectPlayAnimation('b', 'boysumm', true)
		characterPlayAnim('dad','helook',true)
		setProperty('dad.specialAnim', true);
	if rus == true then
	setTextString('word1', 'Так, малой уже совсем начинает база--')
	setTextString('word2', 'ЭЙ! ВЫ ОБА! УШЛИ ОТ НЕГО!')
	end
	if eng == true then
	setTextString('word1', 'Okay, little one is already--')
	setTextString('word2', 'HEY! BOTH OF YOU! LET HIM BE!')
	end
	setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 1)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
    setTextColor('word1', 'A42DA9')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 13 then
		dialstage = 14
		canskip = false
		runTimer('dialdial1', 4, 1)
		runTimer('dialdial1.1', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
	if rus == true then
	setTextString('word1', 'Слушай сюда, амёба, я не знаю откуда ты такой взялся.')
	end
	if eng == true then
	setTextString('word1', "Listen here, twerp, I don't know where are you from.")
	end
	setTextString('word2', '')
	setTextString('word3', '')
    setTextColor('word1', '940CF0')
		setProperty('b.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 4, 'linear')
	end
	if dialstage == 15 then
		dialstage = 16 
		canskip = false
		runTimer('dialdial2', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
	setTextString('word1', '...эй, ты меня слышишь вообще?')
	end
	if eng == true then
	setTextString('word1', '...hey, are you even listening?')
	end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
	end
	if dialstage == 17 then
		dialstage = 18
		canskip = false
		runTimer('dialdial3', 2, 1)
		objectPlayAnimation('v', 'umm', true)
    setTextColor('word2', '00A6E2')
		setTextString('word1', '..........')
		setProperty('l2.x', 1000)
		doTweenX('move', 'l2', 290, 2, 'linear')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		setSoundVolume('jjjjjjjjjjjjjj', 0.75)
	end
	if dialstage == 19 then
		dialstage = 20
		runTimer('hehehaha', 1.25, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
	setTextString('word1', '...врубай музыку.')
	end
	if eng == true then
	setTextString('word1', '...turn up the music.')
	end
	setTextString('word2', '')
	setTextString('word3', '')
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1.25, 'linear')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
		setSoundVolume('jjjjjjjjjjjjjj', 0.25)
	end
	if dialstage == 21 then
		dialstage = 22
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
		soundFadeOut('hemad', 0.5, 0)
		soundFadeIn('jjjjjjjjjjjjjj', 1, 0.25, 0.75)
	end
end

function onTimerCompleted(tag, loops, loopsLeft) -- TO FIND IT EASILYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
	if tag == 'whoaPrecountdownanim' then
	runTimer('dial1', 0.5, 1)
	doTweenAlpha('jjjj', 'black2', 0.5, 1, 'linear')
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if tag == 'dial1' then
		dialstage = 1
	end
	if tag == 'dialthe2' then
	if rus == true then
	setTextString('word2', 'К чёрту тебя.')
	end
	if eng == true then
	setTextString('word2', 'Screw you.')
	end
		playSound('hemad', 0.5, 'hemad')
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
		triggerEvent('Screen Shake', '0.2, 0.002', '0.2, 0.002');
	end
	if tag == 'dial2' then
		runTimer('dial3', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
	setTextString('word3', 'Типа, ты знаешь вообще, кто я?')
	end
	if eng == true then
	setTextString('word3', 'Like, do you even know, who am I?')
	end
	end
	if tag == 'dial3' then
		canskip = true
	end
	if tag == 'dial4.1' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
	setTextString('word3', 'На МОЕЙ же сцене?')
	end
	if eng == true then
	setTextString('word3', 'On MY OWN stage?')
	end
	end
	if tag == 'dial4' then
		canskip = true
	end
	if tag == 'dial6' then
		canskip = true
	end
	if tag == 'dial7' then
		dialstage = 9
	end
	if tag == 'dial8' then
		dialstage = 11
	end
	if tag == 'dial9.1' then
	if rus == true then
	setTextString('word1', 'Так, малой уже совсем начинает база-- (мои уши)')
	setTextString('word3', 'Я ВАМ НЕ ОПЛАЧИВАЮ УСЛУГИ ЗА СВОИ ДЕЙСТВИЯ!')
	end
	if eng == true then
	setTextString('word1', "Okay, little one is already-- (my ears)")
	setTextString('word3', "I AIN'T PAYING YOUR JOB FOR YOUR OWN DOINGS")
	end
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	end
	if tag == 'dial9' then
		canskip = true
	end
	if tag == 'dialdial1.1' then
		runTimer('dialdial1.2', 2, 1)
	if rus == true then
	setTextString('word2', 'Я - В.П. Воид. В-П-ЧЁРТОВ ВОИД!')
	end
	if eng == true then
	setTextString('word2', 'I - am A.C. Void. A-C-FREAKING VOID!')
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'rage', true)
	end
	if tag == 'dialdial1.2' then
	if rus == true then
	setTextString('word3', 'И я устал от твоих игр.')
	end
	if eng == true then
	setTextString('word3', "And I'm tired of your games.")
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	end
	if tag == 'dialdial1' then
		canskip = true
	end
	if tag == 'dialdial2' then
		canskip = true
	end
	if tag == 'dialdial3' then
		canskip = true
	end
	if tag == 'hehehaha' then
		dialstage = 21
	end
    
    if tag == 'animPlayed' then -- Animation played, countdown now
        startCountdown();
		doTweenAlpha('byebyee', 'black2', 0, 2, 'linear')
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
end
function onStepHit()
	if curStep == 28 then
		stopSound('jjjjjjjjjjjjjj')
	end
end