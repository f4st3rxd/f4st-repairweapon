-- writed by f4st3r --

local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
local RepairPrice = FastConfig.WeaponRepairPrice

RegisterServerEvent("f4st:server:repairweapon", function()
    local Player = QBCore.Functions.GetPlayer(source)
    local weapon = ox_inventory:GetCurrentWeapon(source)
 
    if Player.PlayerData.job.name == FastConfig.WeaponRepairPermission then 
        if weapon then
            if Player.Functions.GetMoney("cash") > RepairPrice then 
                RepairWeapon("cash")
            elseif Player.Functions.GetMoney("bank") > RepairPrice then 
                RepairWeapon("bank")
            else
                TriggerClientEvent("QBCore:Notify", source, "Üstünüzde yeterli para yok", "error", 3000)
            end
        else
            TriggerClientEvent("QBCore:Notify", source, "Tamir edilecek silah ilk slotta olmalı", "error", 3000)
        end 
    else
        -- exports["f4st-base"]:DetectCheater("Tried Repair Weapon!")
        DropPlayer(source, "Tried Repair Weapon!")
    end
end)

function RepairWeapon(moneytype)
    local Player = QBCore.Functions.GetPlayer(source)
    local weapon = ox_inventory:GetCurrentWeapon(source)
    Player.Functions.RemoveMoney(moneytype, RepairPrice, "Silah Tamiri")
    
 
    if weapon then
        ox_inventory:SetDurability(source, weapon.slot, 100)
    end

    TriggerClientEvent("QBCore:Notify", source, "Silahı başarıyla tamir ettiniz", "success", 3000)
end

-- writed by f4st3r --
