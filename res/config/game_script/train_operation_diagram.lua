local function log(message, ...)
    local timestamp = os.date("%H:%M:%S.") .. string.format("%03d", math.floor((os.clock() % 1) * 1000))
    local input = { ... }
    print(string.format("[%s][TOD]" .. message, timestamp, input))
end


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
        guiHandleEvent = function(id, name, param)
            log("Handled an UI event!", id, name)
        end,
        handleEvent = function(src, id, name, param)
            log("Handled an event!", id, name)
        end,
    }
end
