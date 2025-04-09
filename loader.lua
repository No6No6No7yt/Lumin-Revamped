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
local f="ed58a7c08024fcb2909098cc898418c1"local T=(loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua")))()T.script_id=f local F=setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set cloneref=cloneref or function(f)return f end local N=Instance.new("ScreenGui")local M=Instance.new("Frame")local j=Instance.new("UICorner")local L=Instance.new("Frame")local b=Instance.new("UICorner")local u=Instance.new("TextLabel")local C=Instance.new("TextButton")local y=Instance.new("UICorner")local A=Instance.new("TextLabel")local O=Instance.new("TextButton")local h=Instance.new("UICorner")local e=Instance.new("TextButton")local w=Instance.new("UICorner")local n=Instance.new("TextBox")local H=Instance.new("UICorner")local Q=Instance.new("TextButton")N.Parent=cloneref(game:GetService("CoreGui"))N.ZIndexBehavior=Enum.ZIndexBehavior.Sibling M.Name="MainFrame"M.Parent=N M.BackgroundColor3=Color3.fromRGB(24,25,24)M.BorderColor3=Color3.fromRGB(0,0,0)M.BorderSizePixel=0 M.Position=UDim2.new(.39920634,0,.391959786,0)M.Size=UDim2.new(0,312,0,212)local I=game:GetService("UserInputService")local Z local D local p local m local function E(f)local T=f.Position-p M.Position=UDim2.new(m.X.Scale,m.X.Offset+T.X,m.Y.Scale,m.Y.Offset+T.Y)end L.InputBegan:Connect(function(f)if f.UserInputType==Enum.UserInputType.MouseButton1 or f.UserInputType==Enum.UserInputType.Touch then Z=true p=f.Position m=M.Position end end)L.InputEnded:Connect(function(f)if f.UserInputType==Enum.UserInputType.MouseButton1 or f.UserInputType==Enum.UserInputType.Touch then Z=false end end)L.InputChanged:Connect(function(f)if f.UserInputType==Enum.UserInputType.MouseMovement or f.UserInputType==Enum.UserInputType.Touch then D=f end end)I.InputChanged:Connect(function(f)if f==D and Z then E(f)end end)j.Parent=M L.Parent=M L.BackgroundColor3=Color3.fromRGB(27,27,27)L.BorderColor3=Color3.fromRGB(0,0,0)L.BorderSizePixel=0 L.Size=UDim2.new(0,312,0,30)b.Parent=L u.Parent=L u.BackgroundColor3=Color3.fromRGB(27,27,27)u.BackgroundTransparency=1.0 u.BorderColor3=Color3.fromRGB(0,0,0)u.BorderSizePixel=0 u.Size=UDim2.new(0,332,0,30)u.Font=Enum.Font.SourceSans u.Text="Lumin Hub - Key System"u.TextColor3=Color3.fromRGB(255,255,255)u.TextSize=16.0 Q.Name="CloseButton"Q.Parent=L Q.BackgroundColor3=Color3.fromRGB(24,25,24)Q.BackgroundTransparency=0 Q.BorderSizePixel=0 Q.Position=UDim2.new(.92,0,.15,0)Q.Size=UDim2.new(0,18,0,18)Q.Font=Enum.Font.Gotham Q.Text="x"Q.TextColor3=Color3.fromRGB(255,255,255)Q.TextSize=14.0 Q.MouseButton1Click:Connect(function()N:Destroy()end)C.Name="Discord"C.Parent=M C.BackgroundColor3=Color3.fromRGB(0,165,110)C.BorderColor3=Color3.fromRGB(0,0,0)C.BorderSizePixel=0 C.Position=UDim2.new(.0413963124,0,.807727575,0)C.Size=UDim2.new(0,286,0,31)C.Font=Enum.Font.SourceSans C.Text="Join The Discord Server"C.TextColor3=Color3.fromRGB(220,220,220)C.TextSize=16.0 C.MouseButton1Click:Connect(function()F("https://discord.com/invite/luminhub")end)y.CornerRadius=UDim.new(0,5)y.Parent=C A.Parent=M A.BackgroundColor3=Color3.fromRGB(255,255,255)A.BackgroundTransparency=1.0 A.BorderColor3=Color3.fromRGB(0,0,0)A.BorderSizePixel=0 A.Position=UDim2.new(.206865951,0,.178679273,0)A.Size=UDim2.new(0,182,0,38)A.Font=Enum.Font.SourceSans A.Text="Get Key For Lumin Hub"A.TextColor3=Color3.fromRGB(212,212,212)A.TextSize=14.0 O.Name="Check Key"O.Parent=M O.BackgroundColor3=Color3.fromRGB(29,28,29)O.BorderColor3=Color3.fromRGB(0,0,0)O.BorderSizePixel=0 O.Position=UDim2.new(.0413963124,0,.586622059,0)O.Size=UDim2.new(0,136,0,37)O.Font=Enum.Font.SourceSans O.Text="Check Key"O.TextColor3=Color3.fromRGB(220,220,220)O.TextSize=16.0 O.MouseButton1Click:Connect(function()local f=n.Text local F=O.Text local M=T.check_key(f)if M.code=="KEY_VALID"then O.Text="Valid key!"script_key=f T.load_script()task.wait(1)N:Destroy()else O.Text="Invalid key!"task.wait(2)O.Text=F end end)h.CornerRadius=UDim.new(0,5)h.Parent=O e.Name="Get Key"e.Parent=M e.BackgroundColor3=Color3.fromRGB(29,28,29)e.BorderColor3=Color3.fromRGB(0,0,0)e.BorderSizePixel=0 e.Position=UDim2.new(.522165537,0,.586622059,0)e.Size=UDim2.new(0,136,0,37)e.Font=Enum.Font.SourceSans e.Text="Get Key"e.TextColor3=Color3.fromRGB(220,220,220)e.TextSize=16.0 e.MouseButton1Click:Connect(function()local f=e.Text F("https://ads.luarmor.net/get_key?for=Lumin-KuoXMMvzYuNS")e.Text="Copied Link!"task.wait(1)e.Text=f end)w.CornerRadius=UDim.new(0,5)w.Parent=e n.Name="Key"n.Parent=M n.BackgroundColor3=Color3.fromRGB(29,28,29)n.BorderColor3=Color3.fromRGB(0,0,0)n.BorderSizePixel=0 n.Position=UDim2.new(.0413963124,0,.349056602,0)n.Size=UDim2.new(0,285,0,42)n.Font=Enum.Font.SourceSans n.Text="Enter Key ..."n.TextColor3=Color3.fromRGB(195,195,195)n.TextSize=18.0 H.Parent=n
