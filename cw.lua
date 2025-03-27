local HttpService = game:GetService("HttpService")

local function getInviteCode(sInvite)
    for i = #sInvite, 1, -1 do
        local char = sInvite:sub(i, i)
        if char == "/" then
            return sInvite:sub(i + 1, #sInvite)
        end
    end
    return sInvite
end

local function joinServer(sInvite)
    local inviteCode = getInviteCode(sInvite)
    local url = "http://127.0.0.1:6463/rpc?v=1"
    local headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    }
    local body = {
        cmd = "INVITE_BROWSER",
        args = {
            code = inviteCode
        },
        nonce = HttpService:GenerateGUID(false)
    }

    local requestFunction = syn and syn.request or http_request or request or http.request
    if requestFunction then
        local response = requestFunction({
            Url = url,
            Method = "POST",
            Headers = headers,
            Body = HttpService:JSONEncode(body)
        })
        print("Response:", response.StatusCode, response.Body)
    else
        warn("HTTP request function not available.")
    end
end

local inviteLink = "https://discord.com/invite/CaUVkK2YuV"
joinServer(inviteLink)


 loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8afd136380b3b77b1f64d6b464a2a82f.lua"))()
