-- writed by f4st3r --
local QBCore = exports['qb-core']:GetCoreObject()
local RepairCoords = FastConfig.WeaponRepairCoords

CreateThread(function()
    local sleep = 2000
    while true do 
        local dist = #(GetEntityCoords(PlayerPedId()) - RepairCoords)

        if dist <= 2 then 
            sleep = 2
            if QBCore.Functions.GetPlayerData().job.name == FastConfig.WeaponRepairPermission then 
                QBCore.Functions.DrawText3D(RepairCoords.x, RepairCoords.y, RepairCoords.z, "[E] - Silah Tamir") 
                if IsControlJustPressed(0, 38) then 
                    RepairMenu()
                end
            end 
        end
        Wait(sleep)
    end
end)


function RepairMenu()
    exports['qb-menu']:openMenu({
		{
			header = 'Silah Tamir',
			icon = "fa-solid fa-store",
			isMenuHeader = true, 
		},
		{
			header = 'Silah Tamir Et',
			txt = '$' .. tostring(FastConfig.WeaponRepairPrice),
			icon = "fa-solid fa-arrow-right",
			params = {
                event = 'f4st:bridge',
				args = ""
			}
		},

		{
			header = 'Menüyü Kapat',
			icon = 'fas fa-right-to-bracket',
			params = {
				event = ''
			}
		},	
	})
end

RegisterNetEvent("f4st:bridge", function()
    TriggerServerEvent("f4st:server:repairweapon")
end)

-- writed by f4st3r --