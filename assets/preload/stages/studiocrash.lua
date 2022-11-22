local xx = 350.95;
local yy = 500;
local xx2 = 800.9;
local yy2 = 600;
local ofs = 100;
local ofs2 = 100;
local followchars = false; -- FUCK YOU
local del = 0;
local del2 = 0;

function onCreate()
	makeAnimatedLuaSprite('studiocrash', 'crash_back', -700, -500)
	luaSpriteAddAnimationByPrefix('studiocrash', 'idle', 'code', 24, true)
	scaleObject('studiocrash', 1.75, 1.75);
	setScrollFactor('studiocrash', 0.85, 0.85);
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 300, 530)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0.0001)
	


	makeAnimatedLuaSprite('backbroken','bgbroken',-600,-350)
	addAnimationByPrefix('backbroken','idle','Initial',12,true)
	addAnimationByPrefix('backbroken','break1','1st Break',12,false)
	addAnimationByPrefix('backbroken','break2','2nd Break',12,false)
	objectPlayAnimation('backbroken','idle',true)
	setScrollFactor('backbroken', 0.3, 0.3);
	scaleObject('backbroken', 1.6, 1.6)
    addLuaSprite('studiocrash', false)
	addLuaSprite('backbroken', false)
	addLuaSprite('heavytf2', false)
	addLuaSprite('cum', true)

end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('bf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            if getProperty('bf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            if getProperty('bf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
            if getProperty('bf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
