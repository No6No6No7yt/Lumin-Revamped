function isCalledByLoadstring()

    local info = debug.getinfo(2, "S")

    if info and info.what == "Lua" and info.source:find("loadstring") then
        return true
    end

    return false
end

if isCalledByLoadstring() then
    print("yes.")
else
    print("no.")
end
