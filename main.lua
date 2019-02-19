-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Mr. Atkinson
-- Created on: Feb 12, 2019
--
-- This file receives input in text and numeric fields and displays the input in the console
-----------------------------------------------------------------------------------------

-- Set default screen background color to blue (https://docs.coronalabs.com/api/library/display/setDefault.html)
display.setDefault( "background", 215/255, 230/255, 244/255 )

-- Create text field and numeric field
local defaultField = native.newTextField( 100, 100, 180, 30 )
local numericField = native.newTextField( 100, 150, 180, 30 )
numericField.inputType = "number"

-- Deal with the pressing of the click button
function onObjectTouch( event )
    -- if ( event.phase == "began" ) then
    --     print( "Touch event began on: " .. event.target.id )
    -- elseif ( event.phase == "ended" ) then
    --     print( "Touch event ended on: " .. event.target.id )
    -- end

    if ( event.target.id == "Text Field" ) then
        print( defaultField.text )
    elseif ( event.target.id == "Numeric Field" ) then
        print( numericField.text )
    end
    return true
end
 

-- Add a button to the screen
local image = display.newImageRect( "assets/enterButton.png", 100, 40 )
image.id = "Text Field"
image.x = 250
image.y = 100

image:addEventListener( "touch", onObjectTouch )

 

-- Add an image to the screen (https://docs.coronalabs.com/api/library/display/newImageRect.html)
local image2 = display.newImageRect( "assets/enterButton.png", 100, 40 )
image2.id = "Numeric Field"
image2.x = 250
image2.y = 150

image2:addEventListener( "touch", onObjectTouch )
