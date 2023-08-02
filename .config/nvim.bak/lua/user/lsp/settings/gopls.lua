return {
    settings = {
        {
                cmd = {'gopls','--remote=auto'},
                capabilties = {
                        textDocuemnt = {
                                completion = {
                                        completionItem = {
                                                snippetSupport = true
                                        }
                                }
                        }
                },
                init_options = {
                        usePlaceholders = true,
                        completeUnimported = true
                }
        }
    }
}