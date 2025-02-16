function data()
    return {
        info = {
            name = _("MOD_NAME"),
            description = _("MOD_DESC"),
            authors = {
                {
                    name = "Victor LI",
                    role = 'CREATOR',
                },
            },
            minorVersion = 0,
            severityAdd = "NONE",    -- NONE, WARNING, or CRITICAL
            severityRemove = "NONE", -- NONE, WARNING, or CRITICAL
            params = {},
            url = "https://github.com/leevick/train_operation_diagram",
        },
        runFn = function(settings, modParams)
            print("Hello, world!")
        end,
        postRunFn = function(settings, params)
            print("Goodbye, world!")
        end
    }
end
