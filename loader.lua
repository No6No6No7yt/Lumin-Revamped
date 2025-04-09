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
local b='ed58a7c08024fcb2909098cc898418c1'local c=loadstring(game:HttpGet('https://sdkapi-public.luarmor.net/library.lua'))()c.script_id=b;local b=setclipboard or toclipboard or set_clipboard or(Clipboard and Clipboard.set)cloneref=cloneref or function(b)return b end;local d=Instance.new("ScreenGui")local e=Instance.new("Frame")local f=Instance.new("UICorner")local g=Instance.new("Frame")local h=Instance.new("UICorner")local i=Instance.new("TextLabel")local j=Instance.new("TextButton")local k=Instance.new("UICorner")local l=Instance.new("TextLabel")local m=Instance.new("TextButton")local n=Instance.new("UICorner")local o=Instance.new("TextButton")local p=Instance.new("UICorner")local q=Instance.new("TextBox")local r=Instance.new("UICorner")d.Parent=cloneref(game:GetService("CoreGui"))d.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;e.Name="MainFrame"e.Parent=d;e.BackgroundColor3=Color3.fromRGB(24,25,24)e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0;e.Position=UDim2.new(0.39920634,0,0.391959786,0)e.Size=UDim2.new(0,312,0,212)f.Parent=e;g.Parent=e;g.BackgroundColor3=Color3.fromRGB(27,27,27)g.BorderColor3=Color3.fromRGB(0,0,0)g.BorderSizePixel=0;g.Size=UDim2.new(0,312,0,30)h.Parent=g;i.Parent=g;i.BackgroundColor3=Color3.fromRGB(27,27,27)i.BackgroundTransparency=1.000;i.BorderColor3=Color3.fromRGB(0,0,0)i.BorderSizePixel=0;i.Size=UDim2.new(0,332,0,30)i.Font=Enum.Font.SourceSans;i.Text="Lumin Hub - Key System"i.TextColor3=Color3.fromRGB(255,255,255)i.TextSize=16.000;j.Name="Discord"j.Parent=e;j.BackgroundColor3=Color3.fromRGB(0,165,110)j.BorderColor3=Color3.fromRGB(0,0,0)j.BorderSizePixel=0;j.Position=UDim2.new(0.0413963124,0,0.807727575,0)j.Size=UDim2.new(0,286,0,31)j.Font=Enum.Font.SourceSans;j.Text="Join The Discord Server"j.TextColor3=Color3.fromRGB(220,220,220)j.TextSize=16.000;j.MouseButton1Click:Connect(function()b('https://discord.com/invite/luminhub')end)k.CornerRadius=UDim.new(0,5)k.Parent=j;l.Parent=e;l.BackgroundColor3=Color3.fromRGB(255,255,255)l.BackgroundTransparency=1.000;l.BorderColor3=Color3.fromRGB(0,0,0)l.BorderSizePixel=0;l.Position=UDim2.new(0.206865951,0,0.178679273,0)l.Size=UDim2.new(0,182,0,38)l.Font=Enum.Font.SourceSans;l.Text="Get Key For Lumin Hub"l.TextColor3=Color3.fromRGB(212,212,212)l.TextSize=14.000;m.Name="Check Key"m.Parent=e;m.BackgroundColor3=Color3.fromRGB(29,28,29)m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0;m.Position=UDim2.new(0.0413963124,0,0.586622059,0)m.Size=UDim2.new(0,136,0,37)m.Font=Enum.Font.SourceSans;m.Text="Check Key"m.TextColor3=Color3.fromRGB(220,220,220)m.TextSize=16.000;m.MouseButton1Click:Connect(function()local b=q.Text;local e=m.Text;local f=c.check_key(b)if f.code=='KEY_VALID'then m.Text='Valid key!'script_key=b;c.load_script()task.wait(1)d:Destroy()else m.Text='Invalid key!'task.wait(2)m.Text=e end end)n.CornerRadius=UDim.new(0,5)n.Parent=m;o.Name="Get Key"o.Parent=e;o.BackgroundColor3=Color3.fromRGB(29,28,29)o.BorderColor3=Color3.fromRGB(0,0,0)o.BorderSizePixel=0;o.Position=UDim2.new(0.522165537,0,0.586622059,0)o.Size=UDim2.new(0,136,0,37)o.Font=Enum.Font.SourceSans;o.Text="Get Key"o.TextColor3=Color3.fromRGB(220,220,220)o.TextSize=16.000;o.MouseButton1Click:Connect(function()local c=o.Text;b('https://ads.luarmor.net/get_key?for=Lumin-KuoXMMvzYuNS')o.Text='Copied Link!'task.wait(1)o.Text=c end)p.CornerRadius=UDim.new(0,5)p.Parent=o;q.Name="Key"q.Parent=e;q.BackgroundColor3=Color3.fromRGB(29,28,29)q.BorderColor3=Color3.fromRGB(0,0,0)q.BorderSizePixel=0;q.Position=UDim2.new(0.0413963124,0,0.349056602,0)q.Size=UDim2.new(0,285,0,42)q.Font=Enum.Font.SourceSans;q.Text="Enter Key ..."q.TextColor3=Color3.fromRGB(195,195,195)q.TextSize=18.000;r.Parent=q
