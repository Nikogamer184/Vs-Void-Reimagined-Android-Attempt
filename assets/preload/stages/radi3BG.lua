function onCreate()
if not lowQuality then
    makeLuaSprite('background', 'radi/back3', 0, 0)
	
	makeLuaSprite('barrels', 'the barrels', 1000, 560)
	scaleObject('barrels', 0.9, 0.9)

    makeLuaSprite('rubble', 'radi/middle3', 0, 0)
    makeAnimatedLuaSprite('smoke', 'radi/Smoke', -900, -600)
    addAnimationByPrefix('smoke', 'idle', 'RadiFartAnim0', 24, true)
    scaleObject('smoke', 4, 4)

    makeLuaSprite('front', 'radi/Front3', 0, 0)
    setLuaSpriteScrollFactor('front', 1, 1)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 1900, 600)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 0.0001)
	setObjectCamera('black', 'other')
		
	makeAnimatedLuaSprite('fuckers2','thegreatfinale/hehehebop',50,200)
	addAnimationByPrefix('fuckers2','dance','Neo Boppin',24,false)
	objectPlayAnimation('fuckers2','dance',false)
	setScrollFactor('fuckers2', 1, 1);
	scaleObject('fuckers2', 1.5, 1.5)
end

    addLuaSprite('background', false)
	addLuaSprite('heavytf2', false)
    addLuaSprite('rubble', false)
    addLuaSprite('smoke', true)
	addLuaSprite('barrels', false)
	addLuaSprite('fuckers2', false)
    addLuaSprite('front', true)
	addLuaSprite('black', true)

    objectPlayAnimation('smoke', 'idle', true)
end