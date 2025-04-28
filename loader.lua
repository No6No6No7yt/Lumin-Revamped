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


local p="ed58a7c08024fcb2909098cc898418c1"local o=(loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua")))()o.script_id=p local R=setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set local function D()local p,o=pcall(function()return readfile("luminhubkeysystem.txt")end)return p and o or nil end local function A(p)writefile("luminhubkeysystem.txt",p)end local function j()if isfile("luminhubkeysystem.txt")then delfile("luminhubkeysystem.txt")end end local function d()local p=D()if p then local R=o.check_key(p)if R.code=="KEY_VALID"then script_key=p o.load_script()return true else j()end end return false end cloneref=cloneref or function(p)return p end local G=Instance.new("ScreenGui")local I=Instance.new("Frame")local u=Instance.new("UICorner")local Q=Instance.new("Frame")local c=Instance.new("UICorner")local X=Instance.new("TextLabel")local V=Instance.new("TextButton")local i=Instance.new("UICorner")local N=Instance.new("TextLabel")local z=Instance.new("TextButton")local J=Instance.new("UICorner")local r=Instance.new("TextButton")local O=Instance.new("UICorner")local n=Instance.new("TextBox")local f=Instance.new("UICorner")local b=Instance.new("TextButton")G.Parent=cloneref(game:GetService("CoreGui"))G.ZIndexBehavior=Enum.ZIndexBehavior.Sibling I.Name="MainFrame"I.Parent=G I.BackgroundColor3=Color3.fromRGB(24,25,24)I.BorderColor3=Color3.fromRGB(0,0,0)I.BorderSizePixel=0 I.Position=UDim2.new(.39920634,0,.391959786,0)I.Size=UDim2.new(0,312,0,212)local H=game:GetService("UserInputService")local F local h local x local g local function B(p)local o=p.Position-x I.Position=UDim2.new(g.X.Scale,g.X.Offset+o.X,g.Y.Scale,g.Y.Offset+o.Y)end Q.InputBegan:Connect(function(p)if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then F=true x=p.Position g=I.Position end end)Q.InputEnded:Connect(function(p)if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then F=false end end)Q.InputChanged:Connect(function(p)if p.UserInputType==Enum.UserInputType.MouseMovement or p.UserInputType==Enum.UserInputType.Touch then h=p end end)H.InputChanged:Connect(function(p)if p==h and F then B(p)end end)u.Parent=I Q.Parent=I Q.BackgroundColor3=Color3.fromRGB(27,27,27)Q.BorderColor3=Color3.fromRGB(0,0,0)Q.BorderSizePixel=0 Q.Size=UDim2.new(0,312,0,30)c.Parent=Q X.Parent=Q X.BackgroundColor3=Color3.fromRGB(27,27,27)X.BackgroundTransparency=1.0 X.BorderColor3=Color3.fromRGB(0,0,0)X.BorderSizePixel=0 X.Size=UDim2.new(0,332,0,30)X.Font=Enum.Font.SourceSans X.Text="Lumin Hub - Key System"X.TextColor3=Color3.fromRGB(255,255,255)X.TextSize=16.0 b.Name="CloseButton"b.Parent=Q b.BackgroundColor3=Color3.fromRGB(24,25,24)b.BackgroundTransparency=0 b.BorderSizePixel=0 b.Position=UDim2.new(.92,0,.15,0)b.Size=UDim2.new(0,18,0,18)b.Font=Enum.Font.Gotham b.Text="x"b.TextColor3=Color3.fromRGB(255,255,255)b.TextSize=14.0 b.MouseButton1Click:Connect(function()G:Destroy()end)V.Name="Discord"V.Parent=I V.BackgroundColor3=Color3.fromRGB(0,165,110)V.BorderColor3=Color3.fromRGB(0,0,0)V.BorderSizePixel=0 V.Position=UDim2.new(.0413963124,0,.807727575,0)V.Size=UDim2.new(0,286,0,31)V.Font=Enum.Font.SourceSans V.Text="Join The Discord Server"V.TextColor3=Color3.fromRGB(220,220,220)V.TextSize=16.0 V.MouseButton1Click:Connect(function()R("https://discord.com/invite/CaUVkK2YuV")end)i.CornerRadius=UDim.new(0,5)i.Parent=V N.Parent=I N.BackgroundColor3=Color3.fromRGB(255,255,255)N.BackgroundTransparency=1.0 N.BorderColor3=Color3.fromRGB(0,0,0)N.BorderSizePixel=0 N.Position=UDim2.new(.206865951,0,.178679273,0)N.Size=UDim2.new(0,182,0,38)N.Font=Enum.Font.SourceSans N.Text="Get Key For Lumin Hub"N.TextColor3=Color3.fromRGB(212,212,212)N.TextSize=14.0 z.Name="Check Key"z.Parent=I z.BackgroundColor3=Color3.fromRGB(29,28,29)z.BorderColor3=Color3.fromRGB(0,0,0)z.BorderSizePixel=0 z.Position=UDim2.new(.0413963124,0,.586622059,0)z.Size=UDim2.new(0,136,0,37)z.Font=Enum.Font.SourceSans z.Text="Check Key"z.TextColor3=Color3.fromRGB(220,220,220)z.TextSize=16.0 z.MouseButton1Click:Connect(function()local p=n.Text local R=z.Text local D=o.check_key(p)if D.code=="KEY_VALID"then z.Text="Valid key!"script_key=p A(p)o.load_script()task.wait(1)G:Destroy()else z.Text="Invalid key!"j()task.wait(2)z.Text=R end end)J.CornerRadius=UDim.new(0,5)J.Parent=z r.Name="Get Key"r.Parent=I r.BackgroundColor3=Color3.fromRGB(29,28,29)r.BorderColor3=Color3.fromRGB(0,0,0)r.BorderSizePixel=0 r.Position=UDim2.new(.522165537,0,.586622059,0)r.Size=UDim2.new(0,136,0,37)r.Font=Enum.Font.SourceSans r.Text="Get Key"r.TextColor3=Color3.fromRGB(220,220,220)r.TextSize=16.0 r.MouseButton1Click:Connect(function()local p=r.Text local o=Instance.new("Frame")local R=Instance.new("UICorner")local D=Instance.new("TextLabel")local A=Instance.new("TextButton")local j=Instance.new("UICorner")local d=Instance.new("TextButton")local I=Instance.new("UICorner")o.Name="SelectionFrame"o.Parent=G o.BackgroundColor3=Color3.fromRGB(24,25,24)o.BorderSizePixel=0 o.Position=UDim2.new(.4,0,.4,0)o.Size=UDim2.new(0,250,0,150)o.Visible=true R.Parent=o R.CornerRadius=UDim.new(0,5)D.Parent=o D.BackgroundTransparency=1 D.Position=UDim2.new(0,0,.1,0)D.Size=UDim2.new(1,0,.2,0)D.Font=Enum.Font.SourceSans D.Text="Choose Verification Method"D.TextColor3=Color3.fromRGB(255,255,255)D.TextSize=18 A.Name="LinkvertiseButton"A.Parent=o A.BackgroundColor3=Color3.fromRGB(29,28,29)A.Position=UDim2.new(.1,0,.4,0)A.Size=UDim2.new(.8,0,.15,0)A.Font=Enum.Font.SourceSans A.Text="Linkvertise (1 checkpoint)"A.TextColor3=Color3.fromRGB(220,220,220)A.TextSize=16 j.Parent=A j.CornerRadius=UDim.new(0,5)d.Name="LootlabsButton"d.Parent=o d.BackgroundColor3=Color3.fromRGB(29,28,29)d.Position=UDim2.new(.1,0,.65,0)d.Size=UDim2.new(.8,0,.15,0)d.Font=Enum.Font.SourceSans d.Text="Lootlabs (3 checkpoints)"d.TextColor3=Color3.fromRGB(220,220,220)d.TextSize=16 I.Parent=d I.CornerRadius=UDim.new(0,5)A.MouseButton1Click:Connect(function()setclipboard("https://ads.luarmor.net/get_key?for=Lumin-KuoXMMvzYuNS")o:Destroy()end)d.MouseButton1Click:Connect(function()setclipboard("https://ads.luarmor.net/get_key?for=Lumin_lootlabs-mhONZdsUTneO")o:Destroy()end)end)O.CornerRadius=UDim.new(0,5)O.Parent=r n.Name="Key"n.Parent=I n.BackgroundColor3=Color3.fromRGB(29,28,29)n.BorderColor3=Color3.fromRGB(0,0,0)n.BorderSizePixel=0 n.Position=UDim2.new(.0413963124,0,.349056602,0)n.Size=UDim2.new(0,285,0,42)n.Font=Enum.Font.SourceSans n.Text="Enter Key ..."n.TextColor3=Color3.fromRGB(195,195,195)n.TextSize=18.0 f.Parent=n if not d()then G.Parent=cloneref(game:GetService("CoreGui"))end
