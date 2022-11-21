local canSpawn = true
function onCreate()
		spawnParticles();
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'particleSpawn' and canSpawn == true then
			particleTimer();
	end
end	

flameIsBig = false

-- particle logic
particleCount = 0;
particleLimit = 90;
particleTime = 2.5;
function spawnParticles()
	if canSpawn == true then
	for i = 1, particleLimit do
		tag = ('flamesParticle'..i);
		makeLuaSprite(tag, nil, -10000, -10000);
		makeGraphic(tag, 15, 15, 'A12E83');
		addLuaSprite(tag, false);
		setBlendMode(tag, 'add');
	end
	runTimer('particleSpawn', 0.1, 0);
	end
end

function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end

	tag = ('flamesParticle'..particleCount);
	math.randomseed(os.clock() * 100 + getSongPosition());
	setProperty(tag..'.scale.x', math.random(1000, 1500) / 1000);
	if flameIsBig then
		setProperty(tag..'.x', math.random(-500, 2000));
	else
		setProperty(tag..'.x', math.random(0, 1500));
	if curStep == 2856 then
		setProperty(tag..'.x', math.random(9999, 9999));
	end
	end
	velX = math.random(-50, 50);
	setProperty(tag..'.velocity.x', velX);
	math.randomseed(os.clock() * 92.4 - getSongPosition());
	setProperty(tag..'.scale.y', math.random(1000, 1500) / 1000);
	if flameIsBig then
		setProperty(tag..'.y', math.random(100, 1000));
	else
		setProperty(tag..'.y', math.random(150, 500));
	end
	setProperty(tag..'.velocity.y', math.random(-75, -150));
	setProperty(tag..'.alpha', 1);

	if flameIsBig then
		order = getObjectOrder('bgFlames') + 1;
		if particleCount % 2 == 0 and getProperty('uproarScreenThing.alpha') < 1 then
			order = getObjectOrder('boyfriendGroup') + 1;
		end
		setObjectOrder(tag, order);
	end

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 0, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -0.75, particleTime/2, 'linear');
end
function onUpdate()
	if canSpawn == true then
		particleThink();
	end
end