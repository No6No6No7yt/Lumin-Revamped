function isCalledBySpecificLoadstring()

    local info = debug.getinfo(2, "S")

    if info and info.source:find("lumin%-hub%.lol/test%.lua") then
        return true
    end

    return false
end

if isCalledBySpecificLoadstring() then
    print("Yes.")
else
    print("No.")
end
