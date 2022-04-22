local sources = {
        "SIB61.settings",
        "SIB61.keybindings",
        "SIB61.plugins",
        "SIB61.colors",
        "SIB61.lspconf"
}

for _,source in ipairs(sources) do 
        require(source)
end


