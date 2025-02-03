local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Blox Fruits ",
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
}

local Options = Fluent.Options





    Tabs.Main:AddButton({
        Title = "Load New Blox Fruits Script but it doesn't \n Support Low unc executors",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("http://lumin-hub.lol/bloxfruittest.lua"))()
        end
    })


    Tabs.Main:AddButton({
        Title = "Load Old Blox Fruits Script but it \n supports Low unc executors and no updates",
        Description = "",
        Callback = function()
        loadstring(game:HttpGet("http://syng.lol/BloxFruits.lua"))()
        end
    })



Window:SelectTab(1)
