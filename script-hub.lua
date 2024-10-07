--[[LIBRARY]]

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local sussyrepo = 'https://github.com/minekraftgamer/sussy/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()


local Window = Library:CreateWindow({

    Title = 'sigma hub | Truly the best',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

--[[TABS]]

local Tabs = {
    
    
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

--[[GROUP BOXES]]

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('DOORS')

--[[UI ELEMENTS]]

LeftGroupBox:AddToggle('DOORS|script', {
    Text = 'mspaint v2 | DOORS',
    Default = false, -- Default value (true / false)
    Tooltip = 'Executes mspaint v2', -- Information shown when you hover over the toggle

    Callback = function(Value)
        print("mspaint v2 executing")
    end
})
















--[[EVENTS]]

Toggles.DOORS|script:OnChanged(function()
    print("mspaint v2 executed")

    -- Load and execute the script
    local loadedFunc = loadstring(game:HttpGet(sussyrepo .. 'script-hub-cogs/doors-1'))
    
    -- Call the function and capture the returned value
    local mspaint = loadedFunc()
    
    -- Now you can access the `mspaint` variable
    print(mspaint)
    wait(0.05)
end

