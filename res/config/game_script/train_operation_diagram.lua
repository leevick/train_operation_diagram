local function log(message, ...)
    local timestamp = os.date("%H:%M:%S.") .. string.format("%03d", math.floor((os.clock() % 1) * 1000))
    local input = { ... }
    print(string.format("[%s][TOD]" .. message, timestamp, input))
end

local initialized = false

function data()
    return {
        save = function()
            log("Saved the world!")
            return nil
        end,
        load = function(loadedstate)
            log("Lua version: " .. _VERSION)
            log("Loaded the world!")
        end,
        update = function()
            log("Updated the world!")
        end,

        guiUpdate = function()
            if not initialized then
                log("Initialized the UI!")
                initialized = true

                local buttonLabel = gui.textView_create("gameInfo.timetables.label", "Timetables")

                local button = gui.button_create("gameInfo.timetables.button", buttonLabel)
                button:onClick(function()
                    log("Clicked the button!")
                end)
                game.gui.boxLayout_addItem("gameInfo.layout", button.id)
            end
        end,

        guiHandleEvent = function(id, name, param)
            log("Handled an UI event!", id, name)
        end,
        handleEvent = function(src, id, name, param)
            log("Handled an event!", id, name)
        end,
    }
end
