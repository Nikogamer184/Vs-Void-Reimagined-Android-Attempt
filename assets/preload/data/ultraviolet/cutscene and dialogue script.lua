local allowCountdown = false
local canskip = false
local dialstage = -999999999

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and isStoryMode then
        
		setProperty('inCutscene', true);
		setProperty('black2.alpha',1)
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('scoreTxt.alpha', 0)
        setProperty('epekup.alpha', 0)
        setProperty('epekdown.alpha', 0)
		runTimer('whoaPrecountdownanim', 0.5, 1)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
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
		dialstage = 27
		doTweenX('gobackarrow', 'arrow', 3000, 0.5, 'sineIn')
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = false
	doTweenAlpha('jjjj', 'black2', 0.5, 1, 'linear')
		runTimer('dial2', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
    setTextString('word1', 'Опять припёрся? Тебе не хватило того раза?')
	end
	if eng == true then
    setTextString('word1', "You again? Didn't you had enough from last time?")
	end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
	setProperty('l.alpha', 1)
	setProperty('l2.alpha', 1)
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
		playSound('tf2dialoguemusic', 0.3, 'hehhehhehhehe')
	end
	if dialstage == 3 then
		dialstage = 4
		canskip = false
		runTimer('dial3', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'smug', true)
	if rus == true then
    setTextString('word1', 'Или же хочешь взять автограф')
    setTextString('word2', 'после того шикарного концерта?')
	end
	if eng == true then
    setTextString('word1', 'Or if you want an autograph')
    setTextString('word2', 'since that fabulous concert?')
	end
    setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		runTimer('dial4', 1, 1)
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'ready', true)
	if rus == true then
    setTextString('word1', 'я за реваншем пришёл')
	end
	if eng == true then
    setTextString('word1', 'i came for rematch')
	end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('b.alpha', 1)
	setProperty('v.alpha', 0)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
    setTextColor('word1', '00A6E2')
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
	end
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial5', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
    setTextString('word1', 'Реванш?..')
	end
	if eng == true then
    setTextString('word1', 'A rematch?..')
	end
    setTextString('word2', '')
    setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('b.alpha', 0)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		runTimer('dial7', 2, 1)
		runTimer('dial7.1', 0.75, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'norm', true)
	if rus == true then
    setTextString('word1', 'Давай сразу обсудим условия.')
	end
	if eng == true then
    setTextString('word1', "Let's settle some rules for now.")
	end
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		runTimer('dial8', 3, 1)
		runTimer('dial8.1', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
		characterPlayAnim('dad','helook',true)
		setProperty('dad.specialAnim', true);
	if rus == true then
    setTextString('word1', 'Аккретионы все равно ушли обедать.')
	end
	if eng == true then
    setTextString('word1', 'Accretions have gone for lunch anyways.')
	end
	setTextString('word2', '')
    setTextString('word3', '')
		setProperty('v.alpha', 1)
		setProperty('b.alpha', 0)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 13 then
		dialstage = 14
		canskip = false
		runTimer('dial9', 2, 1)
		runTimer('dial9.1', 0.75, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then	
    setTextString('word1', 'И почему только один раунд - потому что я прошел не менее')
    setTextString('word2', 'СЕМИ спа-процедур.')
	end
	if eng == true then
    setTextString('word1', "And why this is only one round - because I've gone through")
    setTextString('word2', 'not less than SEVEN spa-procedues.')
	end
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
	end
	if dialstage == 15 then
		dialstage = 16
		canskip = false
		setSoundVolume('hehhehhehhehe', 0.1)
		runTimer('dialdial1', 3, 1)
		runTimer('dialdial1.1', 1.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'dark', true)
	if rus == true then
    setTextString('word1', 'И скорее всего они...')
	end
	if eng == true then
    setTextString('word1', 'And I think they...')
	end
    setTextString('word2', '')
    setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 17 then
		dialstage = 18
		canskip = false
		setSoundVolume('hehhehhehhehe', 0.3)
		runTimer('dialdial2', 3, 1)
		runTimer('dialdial2.1', 0.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', 'Это пока не важно.')
	end
	if eng == true then
    setTextString('word1', "It's not that important.")
	end
    setTextString('word2', '')
    setTextString('word3', '')
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 19 then
		dialstage = 20
		canskip = false
		runTimer('dialdial3', 2, 1)
		playSound('voices/beep', 1)
		objectPlayAnimation('b', 'norm', true)
	if rus == true then
    setTextString('word1', 'и ты правратишься в межпространственную чушь')
    setTextString('word2', 'которая может разорвать наверное галактики')
	end
	if eng == true then
    setTextString('word1', "and you're gonna transform into interdimensional nonsense")
    setTextString('word2', 'that can destroy probably universes')
	end
    setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 0)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
    setTextColor('word1', '00A6E2')
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
		pauseSound('hehhehhehhehe')
	end
	if dialstage == 21 then
		dialstage = 22
		canskip = false
		runTimer('dialdial4', 0.5, 1)
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'rage', true)
	if rus == true then
    setTextString('word1', 'ДОСТАЛ ТЫ УЖЕ C ЭТОЙ ХРЕНЬЮ!')
	end
	if eng == true then
    setTextString('word1', "I'M ALREADY SICK OF YOUR SHIT!")
	end
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1.5, 'linear')
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 23 then
		dialstage = 24
		canskip = false
		runTimer('dialdial6', 1, 1)
		playSound('voices/bah', 1)
		objectPlayAnimation('b', 'umm', true)
	if eng == true then
    setTextString('word1', "haven't you knew this? every mod with a character like you")
    setTextString('word2', 'plays out like this')
	end
	if rus == true then
    setTextString('word1', 'ты разве не знал? каждый мод с таким персом как ты')
    setTextString('word2', 'так проходит')
	end
    setTextString('word3', '')
		setProperty('b.alpha', 1)
		setProperty('v.alpha', 0)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
    setTextColor('word1', '00A6E2')
    setTextColor('word2', '00A6E2')
    setTextColor('word3', '00A6E2')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 900, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 525, 0.5, 'sineInOut');
	end
	if dialstage == 25 then
		dialstage = 26
		canskip = false
		runTimer('dialdial7', 2, 1)
		runTimer('dialdial7.1', 0.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
    setTextString('word1', '...ладно.')
	end
	if eng == true then
    setTextString('word1', '...alright.')
	end
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
    setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
    setTextColor('word1', '940CF0')
    setTextColor('word2', '940CF0')
    setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 27 then
		dialstage = 28
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
		soundFadeOut('hehhehhehhehe', 0.5, 0)
	end
end



function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whoaPrecountdownanim' then
		runTimer('whoaPrecountdownanim2', 1, 1)
		playSound('Ambience', 1)
		if rus == true then
		doTweenAlpha('hihihihih', 'aftermath', 1, 0.5, 'linear')
		end
		if eng == true then
		doTweenAlpha('hihihihih', 'aftermatheng', 1, 0.5, 'linear')
		end
	end
	if tag == 'whoaPrecountdownanim2' then
		runTimer('whoaPrecountdownanim33', 2, 1)
		doTweenAlpha('byebyebyebyebye', 'aftermath', 0, 3, 'linear')
		doTweenAlpha('byebyebyebyeasabye', 'aftermatheng', 0, 3, 'linear')
		doTweenAlpha('hhfhifehihife', 'cut', 1, 0.5, 'linear')
	end
	if tag == 'whoaPrecountdownanim33' then
		runTimer('whoaPrecountdownanim3', 2, 1)
		objectPlayAnimation('cut','2',true)
	end
	if tag == 'whoaPrecountdownanim3' then
		runTimer('whoaPrecountdownanim4', 0.7, 1)
		playSound('supbitch', 1)
	end
	if tag == 'whoaPrecountdownanim4' then
		runTimer('whoaPrecountdownanim5', 1, 1)
		objectPlayAnimation('cut','3',true)
		playSound('huhwhathowdidyou', 1)
	end
	if tag == 'whoaPrecountdownanim5' then
		runTimer('dial0', 2, 1)
		setProperty('cut.alpha', 0)
		playSound('Cutaway', 1)
		setProperty('epekup.alpha', 1)
		setProperty('epekdown.alpha', 1)
		setProperty('epekup.alpha', 1)
        setProperty('epekdown.alpha', 1)
	end
	if tag == 'dial0' then
	runTimer('dial1', 0.5, 1)
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
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
	if tag == 'dial7.1' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'norm', true)
	if rus == true then
    setTextString('word2', 'Мы отыгрываем песню и если ты выигрываешь, ты уходишь.')
	end
	if eng == true then
    setTextString('word2', 'We play out a song and if you win, you leave')
	end
	end
	if tag == 'dial7' then
		canskip = true
	end
	if tag == 'dial8.1' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'norm', true)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
	if rus == true then
    setTextString('word2', 'И это будет на одну песню. На один раунд.')
	end
	if eng == true then
    setTextString('word2', "And it'll be only for one song. Only for one round.")
	end
	end
	if tag == 'dial8' then
		canskip = true
	end
	if tag == 'dial9.1' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
    setTextString('word2', 'СЕМИ спа-процедур. Лишь бы тебя забыть')
	end
	if eng == true then
    setTextString('word2', 'not less than SEVEN spa-procedues.. Just to forget you.')
	end
	end
	if tag == 'dial9' then
		canskip = true
	end
	if tag == 'dialdial1.1' then
	if rus == true then
    setTextString('word2', 'толком мне не помогли.')
	end
	if eng == true then
    setTextString('word2', "didn't help me at all.")
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
		setSoundVolume('hehhehhehhehe', 0.3)
	end
	if tag == 'dialdial1' then
		canskip = true
	end
	if tag == 'dialdial2.1' then
		runTimer('dialdial2.2', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', 'Это пока не важно. Концерт окончен.')
	end
	if eng == true then
    setTextString('word1', "It's not that important. Concert is over.")
	end
	end
	if tag == 'dialdial2.2' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word2', 'Люди не должны увидеть чего-то большего... интересного.')
	end
	if eng == true then
    setTextString('word2', "People don't need to see anything much...interesting.")
	end
	end
	if tag == 'dialdial2' then
		canskip = true
	end
	if tag == 'dialdial3' then
		canskip = true
	end
	if tag == 'dialdial4' then
		runTimer('dialdial5', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
    setTextString('word1', 'ДОСТАЛ ТЫ УЖЕ--')
    setTextString('word2', 'погоди ты как это угадал?')
	end
	if eng == true then
    setTextString('word1', "I'M ALREADY SICK OF--")
    setTextString('word2', 'wait how did you get it?')
	end
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
	resumeSound('hehhehhehhehe')
	end
	if tag == 'dialdial5' then
		canskip = true
	end
	if tag == 'dialdial6' then
		canskip = true
	end
	if tag == 'dialdial7.1' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', '...ладно. Врубай музыку.')
	end
	if eng == true then
    setTextString('word1', '...alright. Turn on the music.')
	end
	end
	if tag == 'dialdial7' then
		dialstage = 27
	end
    
    if tag == 'animPlayed' then -- Animation played, countdown now, and [runTimer('animPlayed', 1, 1)] just for backup
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