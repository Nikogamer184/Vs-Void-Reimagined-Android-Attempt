--function onUpdate(elapsed)
--        if (curStep > 2336 and curStep < 2911) then
--            for j = 0,getProperty('notes.length') -1 do
--                noteType = getPropertyFromGroup('notes', j, 'noteType')
--
--                if (noteType ~= 'BendySplashNote' and noteType ~= 'BendyShadowNote') then
--                    setPropertyFromGroup('notes', j, 'texture','stolennotesgobrr')
--                end
--            end
--            for i = 4,7 do
--                setPropertyFromGroup('strumLineNotes', i, 'texture','stolennotesgobrr')
--           end
--        end
--        
--    if (curStep == 2912) then
--        for j = 0,getProperty('notes.length') -1 do
--            if getPropertyFromGroup('notes', j, 'noteType') ~= 'BendySplashNote' and getPropertyFromGroup('notes', j, 'noteType') ~= 'BendyShadowNote' then
--                setPropertyFromGroup('notes', j, 'texture','')
--           end
--        end
--        for i = 4,7 do
--            setPropertyFromGroup('strumLineNotes', i, 'texture','NOTE_assets')
--        end
--    end
--end
function onUpdate(elapsed)

	if curStep >= 2336 and curStep <= 2911 then
		for i = 0, getProperty('playerStrums.length')-1 do

			setPropertyFromGroup('playerStrums', i, 'texture', 'stolennotesgobrr');
			
				for j = 0, getProperty('notes.length')-1 do
				
							setPropertyFromGroup('notes', j, 'texture', 'stolennotesgobrr');
				end
    
		end
	end
	if curStep == 2912 then
		for i = 0, getProperty('playerStrums.length')-1 do

			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
			
				for j = 0, getProperty('notes.length')-1 do
				
							setPropertyFromGroup('notes', j, 'texture', 'NOTE_assets');
				end
    
		end
	end
end