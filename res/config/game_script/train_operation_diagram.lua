function data()
    return {
        save = function()
            print("Saved the world!")
        end,
        load = function(loadedstate)
            print("Loaded the world!")
        end,
        update = function()
            print("Updated the world!")
        end,
        guiHandleEvent = function(id, name, param)
            print("Handled an UI event!")
        end,
        handleEvent = function(src, id, name, param)
            print("Handled an event!")
        end,
    }
end
