function onCreate()
if not lowQuality then
	makeLuaSprite('back', 'bg', -1000, -150)
	setScrollFactor('back', 0.3, 0.3)
	scaleObject('back', 1.6, 1.6)
	
	makeLuaSprite('backflash', 'bgdrop', -1000, -150)
	setScrollFactor('backflash', 0.3, 0.3)
	scaleObject('backflash', 1.6, 1.6)
	setProperty('backflash.alpha', 0)
	
	makeAnimatedLuaSprite('stage','stage',-300,-350)
	addAnimationByPrefix('stage','hehe','Stage Bop',24,false)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.2, 1.2)
		
	makeAnimatedLuaSprite('fuckers','bopping',-250,-200)
	addAnimationByPrefix('fuckers','dance','Holo Boppers',24,false)
	objectPlayAnimation('fuckers','dance',false)
	setScrollFactor('fuckers', 0.8, 0.8);
	scaleObject('fuckers', 1.2, 1.2)
	
	makeLuaSprite('therock1', 'therock', -100, -50)
	setScrollFactor('therock1', 0.9, 0.9)
	scaleObject('therock1', 1, 1)
	
	makeLuaSprite('therock3', 'therock2', 1200, 150)
	setScrollFactor('therock3', 0.4, 0.4)
	scaleObject('therock3', 0.3, 0.3)
	doTweenX('therock3', 'therock3', -1600, 300, 'linear')
	
	makeLuaSprite('therock2', 'therock_butnear', -250, 150)
	setScrollFactor('therock2', 1.4, 1.4)
	scaleObject('therock2', 0.7, 0.7)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 0.0001)
	setObjectCamera('black', 'other')
	
	makeLuaSprite('black2', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black2', 0, 0);
	scaleObject('black2', 3, 3);
	setProperty('black2.alpha', 0.0001)
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0.0001)
	
	makeLuaSprite('cum2', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum2', 0, 0);
	scaleObject('cum2', 3, 3);
	setProperty('cum2.alpha', 0.0001)
	
	makeLuaSprite('cum4', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum4', 0, 0);
	scaleObject('cum4', 3, 3);
	setProperty('cum4.alpha', 0.0001)
	setBlendMode('cum4', 'add')
	
	addLuaSprite('back', false)
	addLuaSprite('backflash', false)
	addLuaSprite('therock3', false)
	addLuaSprite('fuckers', false)
	addLuaSprite('therock1', false)
	addLuaSprite('therock2', true)
	addLuaSprite('cum4', false)
	addLuaSprite('stage', false)
	addLuaSprite('cum', true)
	addLuaSprite('black', true)
	addLuaSprite('black2', true)
	addLuaSprite('cum2', false)
	addLuaSprite('cum', true)
end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end