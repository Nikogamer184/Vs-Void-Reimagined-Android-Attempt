local rus = false
local eng = false
local allowCountdown = false
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
		runTimer('whoaPrecountdownanim', 0.1, 1)
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
		dialstage = 13
		doTweenX('gobackarrow', 'arrow', 3000, 0.5, 'sineIn')
	end
	if dialstage == 1 then
		dialstage = 2
		canskip = false
		runTimer('dial2', 2, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'umm', true)
	if rus == true then
    setTextString('word1', 'Значит ты не попрошайка с интернета,')
    setTextString('word2', 'который хочет внимания.')
	end
	if eng  == true then
    setTextString('word1', "So you're not the internet wannabe,")
    setTextString('word2', 'who seeks for attention.')
	end
    setTextString('word3', '')
	setProperty('v.alpha', 1)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 2, 'linear')
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
		runTimer('dial3', 3, 1)
		runTimer('dial3.1', 1, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', 'Это все равно не важно.')
	end
	if eng == true then
    setTextString('word1', "It still doesn't matter.")
	end
    setTextString('word2', '')
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 3, 'linear')
	end
	if dialstage == 5 then
		dialstage = 6
		canskip = false
		characterPlayAnim('dad','helook',true)
		setProperty('dad.specialAnim', true);
		runTimer('dial4', 2, 1)
		playSound('voices/sec', 1)
		objectPlayAnimation('b', 'boysnorm', true)
	if rus == true then
    setTextString('word1', 'Босс? Может нам прогнать малявку?')
    setTextString('word2', 'На случай если он всё испортит...')
	end
	if eng == true then
    setTextString('word1', 'Boss? Maybe we could get rid of the midget?')
    setTextString('word2', 'In case if he would ruin everything...')
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
	if dialstage == 7 then
		dialstage = 8
		canskip = false
		runTimer('dial5', 5, 1)
		runTimer('dial5.1', 0.75, 1)
		runTimer('dial5.2', 2.25, 1)
		runTimer('dial5.3', 3.5, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', 'Не-не, всё нормально.')
	end
	if eng == true then
    setTextString('word1', 'No-no, all good.')
	end
	setTextString('word2', '')
	setTextString('word3', '')
	setProperty('v.alpha', 1)
	setProperty('b.alpha', 0)
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 5, 'linear')
	setTextColor('word1', '940CF0')
	setTextColor('word2', '940CF0')
	setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 9 then
		dialstage = 10
		canskip = false
		runTimer('dial6', 1, 1)
		playSound('voices/boh', 1)
		objectPlayAnimation('b', 'norm', true)
	if rus == true then
    setTextString('word1', 'смотря кто говорит лмао')
	end
	if eng == true then
    setTextString('word1', "depends on who's talkin lmao")
	end
		characterPlayAnim('dad','bruh moment',true)
		setProperty('dad.specialAnim', true);
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
		stopSound('hehhehhehhehe')
	end
	if dialstage == 11 then
		dialstage = 12
		canskip = false
		runTimer('dial7', 1, 1)
		playSound('voices/vmad', 1)
		objectPlayAnimation('v', 'mad', true)
	if rus == true then
    setTextString('word1', '...ты уже раздражаешь меня, микроб.')
	end
	if eng == true then
    setTextString('word1', "...you're already getting on my nerves, microbe.")
	end
    setTextString('word2', '')
    setTextString('word3', '')
		setProperty('b.alpha', 0)
		setProperty('v.alpha', 1)
		setProperty('dad.specialAnim', true);
	setProperty('l2.x', 1000)
	doTweenX('move', 'l2', 290, 1, 'linear')
	setTextColor('word1', '940CF0')
	setTextColor('word2', '940CF0')
	setTextColor('word3', '940CF0')
        doTweenX('camFollowPosXTwn', 'camFollowPos', 600, 0.5, 'sineInOut');
        doTweenY('camFollowPosYTwn', 'camFollowPos', 460, 0.5, 'sineInOut');
	end
	if dialstage == 13 then
		dialstage = 14
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
		setProperty('dad.specialAnim', true);
		soundFadeOut('hehhehhehhehe', 0.5, 0)
		soundFadeOut('holoshutup', 0.5, 0)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whoaPrecountdownanim' then
		runTimer('dial1', 0.5, 1)
		objectPlayAnimation('box', 'hi', true)
	setProperty('box.alpha', 1)
	setProperty('arrow.alpha', 1)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
		doTweenAlpha('hehehehe', 'black2', 0.5, 1, 'linear')
		playSound('Holocheer', 1, 'holoshutup')
	end
	if tag == 'dial1' then
		dialstage = 1
		canskip = true
	end
	if tag == 'dial2' then
		canskip = true
	end
	if tag == 'dial3.1' then
	runTimer('dial3.2', 0.9, 1)
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word1', 'Это все равно не важно. У меня не было никаких вызовов')
    setTextString('word2', 'где-то, наверное, ионами.')
	end
	if eng == true then
    setTextString('word1', "It still doesn't matter. I haven't got any challenges")
    setTextString('word2', 'in, like, eons.')
	end
	end
	if tag == 'dial3.2' then
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	if rus == true then
    setTextString('word3', 'Это ностальгия для меня, ты не поймешь.')
	end
	if eng == true then
    setTextString('word3', "Its nostalgic for me, you wouldn't get it.")
	end
	end
	if tag == 'dial3' then
		canskip = true
	end
	if tag == 'dial4' then
		canskip = true
	end
	if tag == 'dial5.1' then
	if rus == true then
	setTextString('word1', 'Не-не, всё нормально. Это пока что еще разогрев.')
	end
	if eng == true then
	setTextString('word1', "No-no, all good. That's still a warm-up.")
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	end
	if tag == 'dial5.2' then
	if rus == true then
    setTextString('word2', 'Потом уже будет жара.')
	end
	if eng == true then
    setTextString("word2", "Then it'll be heated up.")
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'wornout', true)
	end
	if tag == 'dial5.3' then
	if rus == true then
	setTextString('word3', 'Тебе лучше приготовиться, мялавка.')
	end
	if eng == true then
	setTextString('word3', 'You better get ready, midget.')
	end
		playSound('voices/v', 1)
		objectPlayAnimation('v', 'mad', true)
		characterPlayAnim('dad','bro',true)
		setProperty('dad.specialAnim', true);
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