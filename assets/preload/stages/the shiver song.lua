function onCreate()
	addCharacterToList('the-femboy')
	addCharacterToList('void-playable-2')
	if not lowQuality then
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 1000, 600)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
	
	makeLuaSprite('background', 'shiver/bg', -500, -500)
	setScrollFactor('background', 1, 1)
	scaleObject('background', 1, 1)
	
	makeLuaSprite('pillar', 'shiver/pillar', -500, -500)
	setScrollFactor('pillar', 1, 1)
	scaleObject('pillar', 1, 1)
	
	makeLuaSprite('pillar1', 'shiver/pillar-evil', -500, -500)
	setScrollFactor('pillar1', 1, 1)
	scaleObject('pillar1', 1, 1)
	setProperty('pillar1.alpha', 0.0001)
	
	makeLuaSprite('pillar2', 'shiver/pillar', 1750, -500)
	setScrollFactor('pillar2', 1, 1)
	scaleObject('pillar2', 1, 1)
	
	makeLuaSprite('pillar21', 'shiver/pillar-evil', 1750, -500)
	setScrollFactor('pillar21', 1, 1)
	scaleObject('pillar21', 1, 1)
	setProperty('pillar21.alpha', 0.0001)
	
	makeLuaSprite('background1', 'shiver/bg-evil', -500, -500)
	setScrollFactor('background1', 1, 1)
	scaleObject('background1', 0.95, 0.95)
	setProperty('background1.alpha', 0.0001)
	
	makeAnimatedLuaSprite('cabinets', 'shiver/cabinets', -70, 270)
	addAnimationByPrefix('cabinets', 'bop', 'cabinets', 24, true)
	setScrollFactor('cabinets', 1, 1)
	scaleObject('cabinets', 1, 1)
	
	makeAnimatedLuaSprite('cabinets1', 'shiver/cabinets-evil', -70, 270)
	addAnimationByPrefix('cabinets1', 'bop', 'cabinets', 24, true)
	setScrollFactor('cabinets1', 1, 1)
	scaleObject('cabinets1', 1, 1)
	setProperty('cabinets1.alpha', 0.0001)
	
	makeLuaSprite('blackOTHER', 'blackpeople', 0, 0)
	scaleObject('blackOTHER', 3, 3)
	setObjectCamera('blackOTHER', 'other')
	setProperty('blackOTHER.alpha', 0.0001)
	
	makeLuaSprite('cum', 'cum', -1000, -1000)
	scaleObject('cum', 3, 3)
	setProperty('cum.alpha', 0.0001)

	addLuaSprite('background', false)
	addLuaSprite('background1', false)
	addLuaSprite('cabinets', false)
	addLuaSprite('cabinets1', false)
	addLuaSprite('pillar', false)
	addLuaSprite('pillar2', false)
	addLuaSprite('pillar1', false)
	addLuaSprite('pillar21', false)
	addLuaSprite('heavytf2', false)
	addLuaSprite('blackOTHER', true)
	addLuaSprite('cum', true)
	end
end