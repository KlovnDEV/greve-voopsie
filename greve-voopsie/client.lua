print("Greve Developments - https://discord.gg/9kNbDN57xb")

local identifier = "voopsie"

-- Thread
CreateThread(function ()
    while GetResourceState("lb-phone") ~= "started" do
        Wait(500)
    end
    local function AddApp()
        local onUse = exports["lb-phone"]:AddCustomApp({
            identifier = "voopsie",
            name = "Voopsie",
            description = "Voopsie - Betal regninger med denne enkle løsningen",
            developer = "Greve Developments",
            defaultApp = false,
            keepOpen = false,
        onUse = function()
            TriggerEvent("okokBilling:OpenSelectionMenu")
            exports["lb-phone"]:ToggleOpen(false)
        end,
        size = "1932", 
        images = {"https://cdn.discordapp.com/attachments/1178838078601842688/1215665738153721856/KOwBxA1.png?ex=65fd93f1&is=65eb1ef1&hm=e9fa5467e6bb3afc79ca10e7eadbd5b7af624dc20f3d39875c899b070e05c096&"},
        ui = GetCurrentResourceName() .. "/ui/index.html", 
        icon = "https://cfx-nui-" .. GetCurrentResourceName() .. "/ui/assets/icon.png"
        })
        if not added then
        end
    end

    AddApp()
    
AddEventHandler("onResourceStart", function(resource)
    if resource == "lb-phone" then
        AddApp()
    end
end)

end)