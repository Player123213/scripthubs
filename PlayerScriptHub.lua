local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Script Hubs",
   Icon = 117259180607823, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading",
   LoadingSubtitle = "by Player :D",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = ScriptHubs, -- Create a custom folder for your hub/game
      FileName = "PlayersScriptHub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key system",
      Subtitle = "",
      Note = "Key is: Player", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Player"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", 117259180607823)
local LocalPlayer = PlayerTab:CreateSection("Local Player")

local SpeedSlider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 16,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
local JumpPower = PlayerTab:CreateSlider({
   Name = "Jump Power",
   Range = {50, 300},
   Increment = 50,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPowderSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local HubTab = Window:CreateTab("Script Hubs", 86591853167234)
local Arsenal = HubTab:CreateSection("Arsenal")

local ArsenalButton1 = HubTab:CreateButton({
   Name = "Tbao Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
   end,
})

local BlueLockRivals = HubTab:CreateSection("Blue Lock  Rivals")

local BlrButton1 = HubTab:CreateButton({
   Name = "Alchemy Hub (REQUIRES KEY)",
   Callback = function()
   loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Bss = HubTab:CreateSection("Bee Swarm Simulator")

local BssButton1 = HubTab:CreateButton({
   Name = "Atlasa",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Chris8889/atlasbss/main/script.lua"))()
   end,
})

local Combatwarriors = HubTab:CreateSection("Combat Warriors")

local CombatWarriorsButton1 = HubTab:CreateButton({
   Name = "Lumin Hub",
   Callback = function()
   loadstring(game:HttpGet("https://lumin-hub.lol/cw.lua",true))()
   end,
})

local CombatWarriorsButton2 = HubTab:CreateButton({
   Name = "Rehydra",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/t1ware/Rehydra/refs/heads/main/main.lua"))()
   end,
})

local DeadRails = HubTab:CreateSection("Dead Rails")

local DeadRailsButton1 = HubTab:CreateButton({
   Name = "Speed Hub X",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/t1ware/Rehydra/refs/heads/main/main.lua"))()
   end,
})

local DeadRailsButton2 = HubTab:CreateButton({
   Name = "Alchemy Hub (REQUIRES KEY)",
   Callback = function()
   loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Fisch = HubTab:CreateSection("Fisch")

local FischButton1 = HubTab:CreateButton({
   Name = "Speed Hub X",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local FischButton2 = HubTab:CreateButton({
   Name = "Native (REQUIRES KEY)",
   Callback = function()
   (loadstring or load)(game:HttpGet("https://getnative.cc/script/loader"))() 
   end,
})

local FischButton3 = HubTab:CreateButton({
   Name = "Alchemy Hub (REQUIRES KEY)",
   Callback = function()
   loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Rivals = HubTab:CreateSection("Rivals")

local RivalsButton1 = HubTab:CreateButton({
   Name = "Wraith Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Wraithuk/blur/refs/heads/main/rivals"))()
   end,
})

local RivalsButton2 = HubTab:CreateButton({
   Name = "Tbao Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
   end,
})

local RivalsButton3 = HubTab:CreateButton({
   Name = "Zypherion",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/blackowl1231/ZYPHERION/refs/heads/main/main.lua')))()
   end,
})

local RivalsButton4 = HubTab:CreateButton({
   Name = "8Bit (REQUIRES KEY)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/8bits4ya/rivals-v3/refs/heads/main/main.lua"))()
   end,
})

local Forsaken = HubTab:CreateSection("Forsaken")

local ForsakenButton1 = HubTab:CreateButton({
   Name = "Box Hub (REQUIRES KEY)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/souyanen/Fsscripts/refs/heads/main/Forsaken"))()
   end,
})

local ForsakenButton2 = HubTab:CreateButton({
   Name = "Fartaken (REQUIRES KEY)",
   Callback = function()
    if getgenv then
        getgenv().BloxtrapRPC = "true"
        getgenv().DebugNotifications = "false"
        getgenv().TrackMePlease = "true"
    end

    loadstring(game:HttpGet("https://raw.githubusercontent.com/ivannetta/ShitScripts/main/forsaken.lua"))()
   end,
})


local Misc = HubTab:CreateSection("Misc")

local infYield = HubTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})
