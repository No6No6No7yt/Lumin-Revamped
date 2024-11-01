function fr()

    local info = debug.getinfo(2, "S")

    if info and info.source:find("http://lumin%-hub%.lol/test%.lua") then
        return true
    end

    return false
end

if fr() then
    print("Yes.NIGGA")
else
    print("No.")
end
