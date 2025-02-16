function data()
    return {
        info = {
            name = _("Sample mod"),
            description = _("modDesc"),
            authors = {
                {
                    name = "Urban Games",
                    role = 'CREATOR',
                },
            },
            minorVersion = 0,
            severityAdd = "WARNING",
            severityRemove = "CRITICAL",
            params = {},
            url = "https://...",
        },
        -- runFn = function (settings, modParams) ...
        -- postRunFn = function (settings, params) ...
    }
end
