function onCreate()
precacheSound('radi/ready')
precacheSound('radi/set')
precacheSound('radi/go')
	setProperty('introSoundsSuffix', 'suffix')
		
		makeLuaSprite('b3Ready', 'ready-radi', 200, 200);
		setObjectCamera('b3Ready','other');
		setProperty('b3Ready.alpha', 0.0001)
		
		makeLuaSprite('b3Set', 'set-radi', 300, 200);
		setObjectCamera('b3Set','other');
		setProperty('b3Set.alpha', 0.0001)
		
		makeLuaSprite('b3Go', 'go-radi', 400, 200);
		setObjectCamera('b3Go','other');
		setProperty('b3Go.alpha', 0.0001)
		
		
		
end

function onCountdownTick(swagCounter)
	if swagCounter == 1 then
		--setProperty('b3Ready.alpha', 1)
		--doTweenAlpha('b3ReadyAlpha', 'b3Ready', 0, crochet / 1000, 'cubeInOut');
		setProperty('countdownReady.visible', false);
		--stopSound('ready')
		--playSound('radi/ready', 1, 'ready')
	end
	if swagCounter == 2 then
		--setProperty('b3Set.alpha', 1)
		--doTweenAlpha('b3SetAlpha', 'b3Set', 0, crochet / 1000, 'cubeInOut');
		setProperty('countdownSet.visible', false);
		--stopSound('set')
		--playSound('radi/set', 1, 'set')
	end
	if swagCounter == 3 then
		--setProperty('b3Go.alpha', 1)
		--doTweenAlpha('b3GoAlpha', 'b3Go', 0, crochet / 1000, 'cubeInOut');
		setProperty('countdownGo.visible', false);
		--stopSound('go')
		--playSound('radi/go', 1, 'go')
	end
end
function onBeatHit()
	if curBeat == 35 then
		setProperty('b3Go.alpha', 1)
		doTweenAlpha('b3GoAlpha', 'b3Go', 0, crochet / 1000, 'cubeInOut');
		stopSound('go')
		playSound('radi/go', 1, 'go')
	end
	if curBeat == 33 then
		setProperty('b3Ready.alpha', 1)
		doTweenAlpha('b3ReadyAlpha', 'b3Ready', 0, crochet / 1000, 'cubeInOut');
		stopSound('ready')
		playSound('radi/ready', 1, 'ready')
	end
	if curBeat == 34 then
		setProperty('b3Set.alpha', 1)
		doTweenAlpha('b3SetAlpha', 'b3Set', 0, crochet / 1000, 'cubeInOut');
		stopSound('set')
		playSound('radi/set', 1, 'set')
	end
end