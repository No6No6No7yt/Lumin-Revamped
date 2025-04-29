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


local U="ed58a7c08024fcb2909098cc898418c1"local m=(loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua")))()m.script_id=U local z=setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set local function t()local U,m=pcall(function()return readfile("luminhubkeysystem.txt")end)return U and m or nil end local function Q(U)writefile("luminhubkeysystem.txt",U)end local function l()if isfile("luminhubkeysystem.txt")then delfile("luminhubkeysystem.txt")end end local function w()local U=t()if U then local z=m.check_key(U)if z.code=="KEY_VALID"then script_key=U m.load_script()return true else l()end end return false end cloneref=cloneref or function(U)return U end local B=Instance.new("ScreenGui")local n=Instance.new("Frame")local b=Instance.new("UICorner")local g=Instance.new("Frame")local N=Instance.new("UICorner")local v=Instance.new("TextLabel")local L=Instance.new("TextButton")local H=Instance.new("UICorner")local h=Instance.new("TextLabel")local T=Instance.new("TextButton")local e=Instance.new("UICorner")local V=Instance.new("TextButton")local I=Instance.new("UICorner")local u=Instance.new("TextBox")local j=Instance.new("UICorner")local Y=Instance.new("TextButton")B.Parent=cloneref(game:GetService("CoreGui"))B.ZIndexBehavior=Enum.ZIndexBehavior.Sibling n.Name="MainFrame"n.Parent=B n.BackgroundColor3=Color3.fromRGB(24,25,24)n.BorderColor3=Color3.fromRGB(0,0,0)n.BorderSizePixel=0 n.Position=UDim2.new(.39920634,0,.391959786,0)n.Size=UDim2.new(0,312,0,212)local k=game:GetService("UserInputService")local i local d local W local J local function P(U)local m=U.Position-W n.Position=UDim2.new(J.X.Scale,J.X.Offset+m.X,J.Y.Scale,J.Y.Offset+m.Y)end g.InputBegan:Connect(function(U)if U.UserInputType==Enum.UserInputType.MouseButton1 or U.UserInputType==Enum.UserInputType.Touch then i=true W=U.Position J=n.Position end end)g.InputEnded:Connect(function(U)if U.UserInputType==Enum.UserInputType.MouseButton1 or U.UserInputType==Enum.UserInputType.Touch then i=false end end)g.InputChanged:Connect(function(U)if U.UserInputType==Enum.UserInputType.MouseMovement or U.UserInputType==Enum.UserInputType.Touch then d=U end end)k.InputChanged:Connect(function(U)if U==d and i then P(U)end end)b.Parent=n g.Parent=n g.BackgroundColor3=Color3.fromRGB(27,27,27)g.BorderColor3=Color3.fromRGB(0,0,0)g.BorderSizePixel=0 g.Size=UDim2.new(0,312,0,30)N.Parent=g v.Parent=g v.BackgroundColor3=Color3.fromRGB(27,27,27)v.BackgroundTransparency=1.0 v.BorderColor3=Color3.fromRGB(0,0,0)v.BorderSizePixel=0 v.Size=UDim2.new(0,332,0,30)v.Font=Enum.Font.SourceSans v.Text="Lumin Hub - Key System"v.TextColor3=Color3.fromRGB(255,255,255)v.TextSize=16.0 Y.Name="CloseButton"Y.Parent=g Y.BackgroundColor3=Color3.fromRGB(24,25,24)Y.BackgroundTransparency=0 Y.BorderSizePixel=0 Y.Position=UDim2.new(.92,0,.15,0)Y.Size=UDim2.new(0,18,0,18)Y.Font=Enum.Font.Gotham Y.Text="x"Y.TextColor3=Color3.fromRGB(255,255,255)Y.TextSize=14.0 Y.MouseButton1Click:Connect(function()B:Destroy()end)L.Name="Discord"L.Parent=n L.BackgroundColor3=Color3.fromRGB(0,165,110)L.BorderColor3=Color3.fromRGB(0,0,0)L.BorderSizePixel=0 L.Position=UDim2.new(.0413963124,0,.807727575,0)L.Size=UDim2.new(0,286,0,31)L.Font=Enum.Font.SourceSans L.Text="Join The Discord Server"L.TextColor3=Color3.fromRGB(220,220,220)L.TextSize=16.0 L.MouseButton1Click:Connect(function()z("https://discord.com/invite/luminhub")end)H.CornerRadius=UDim.new(0,5)H.Parent=L h.Parent=n h.BackgroundColor3=Color3.fromRGB(255,255,255)h.BackgroundTransparency=1.0 h.BorderColor3=Color3.fromRGB(0,0,0)h.BorderSizePixel=0 h.Position=UDim2.new(.206865951,0,.178679273,0)h.Size=UDim2.new(0,182,0,38)h.Font=Enum.Font.SourceSans h.Text="Get Key For Lumin Hub"h.TextColor3=Color3.fromRGB(212,212,212)h.TextSize=14.0 T.Name="Check Key"T.Parent=n T.BackgroundColor3=Color3.fromRGB(29,28,29)T.BorderColor3=Color3.fromRGB(0,0,0)T.BorderSizePixel=0 T.Position=UDim2.new(.0413963124,0,.586622059,0)T.Size=UDim2.new(0,136,0,37)T.Font=Enum.Font.SourceSans T.Text="Check Key"T.TextColor3=Color3.fromRGB(220,220,220)T.TextSize=16.0 T.MouseButton1Click:Connect(function()local U=u.Text local z=T.Text local t=m.check_key(U)if t.code=="KEY_VALID"then T.Text="Valid key!"script_key=U Q(U)m.load_script()task.wait(1)B:Destroy()else T.Text="Invalid key!"l()task.wait(2)T.Text=z end end)e.CornerRadius=UDim.new(0,5)e.Parent=T V.Name="Get Key"V.Parent=n V.BackgroundColor3=Color3.fromRGB(29,28,29)V.BorderColor3=Color3.fromRGB(0,0,0)V.BorderSizePixel=0 V.Position=UDim2.new(.522165537,0,.586622059,0)V.Size=UDim2.new(0,136,0,37)V.Font=Enum.Font.SourceSans V.Text="Get Key"V.TextColor3=Color3.fromRGB(220,220,220)V.TextSize=16.0 V.MouseButton1Click:Connect(function()local U=V.Text z("https://ads.luarmor.net/get_key?for=Lumin-KuoXMMvzYuNS")V.Text="Copied Link!"task.wait(1)V.Text=U end)I.CornerRadius=UDim.new(0,5)I.Parent=V u.Name="Key"u.Parent=n u.BackgroundColor3=Color3.fromRGB(29,28,29)u.BorderColor3=Color3.fromRGB(0,0,0)u.BorderSizePixel=0 u.Position=UDim2.new(.0413963124,0,.349056602,0)u.Size=UDim2.new(0,285,0,42)u.Font=Enum.Font.SourceSans u.Text="Enter Key ..."u.TextColor3=Color3.fromRGB(195,195,195)u.TextSize=18.0 j.Parent=u if not w()then B.Parent=cloneref(game:GetService("CoreGui"))end
