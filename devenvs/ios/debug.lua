return {
    setup_dap = function(dap)
        dap.adapters.xcede = {
            type = "executable",
            command = "xcede",
            name = "xcede-debug",
            options = {
                initialize_timeout_sec = 9999,
            }
        }
        dap.configurations.swift = {
            {
                name = "Attach",
                type = "xcede",
                request = "attach",
            },
            {
                name = "Launch",
                type = "xcede",
                request = "launch",
                program = "xcede:"
            }
        }
    end
}
