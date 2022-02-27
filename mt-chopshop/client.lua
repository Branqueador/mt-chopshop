local QBCore = exports['qb-core']:GetCoreObject()

-- Criar blip para do mapa
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(2353.56, 3135.2, 48.21) -- Mudar coordenadas do blip aqui!
	SetBlipSprite(blip, 527) -- Mudar estilo do blip aqui!
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 28) -- Mudar cor aqui!
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Ferro Velho") -- Mudar nome do Blip aqui!
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('mt-chopshop:client:Desmanchar')
AddEventHandler("mt-chopshop:client:Desmanchar", function()
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then
    QBCore.Functions.Progressbar("Desmanchar", "A DESMANCHAR VEICULO", 15000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local veh = GetVehiclePedIsIn(PlayerPedId(),true)
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(5,20)
   if success then
        DeleteVehicle(veh)
        DeleteEntity(veh)
        TriggerServerEvent("mt-chopshop:server:Desmanchar")
    else
        QBCore.Functions.Notify("Falhado!", "error")
        end
    end)
    else
        QBCore.Functions.Notify("Tens que estar dentro de um veículo para o desmanchar!", "error", 4500)
    end
end)

-- Evento da ProgressBar
RegisterNetEvent('mt-chopshop:client:DesmancharMotor')
AddEventHandler("mt-chopshop:client:DesmancharMotor", function()
    QBCore.Functions.Progressbar("DesmancharMotor", "A DESMANCHAR MOTOR", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharMotor")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharFarois')
AddEventHandler("mt-chopshop:client:DesmancharFarois", function()
    QBCore.Functions.Progressbar("DesmancharFarois", "A DESMANCHAR FAROIS", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharFarois")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharPortas')
AddEventHandler("mt-chopshop:client:DesmancharPortas", function()
    QBCore.Functions.Progressbar("DesmancharPortas", "A DESMANCHAR PORTAS", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharPortas")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharVidros')
AddEventHandler("mt-chopshop:client:DesmancharVidros", function()
    QBCore.Functions.Progressbar("DesmancharVidros", "A DESMANCHAR VIDROS", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharVidros")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharPneus')
AddEventHandler("mt-chopshop:client:DesmancharPneus", function()
    QBCore.Functions.Progressbar("DesmancharPneus", "A DESMANCHAR PNEUS", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharPneus")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharRodas')
AddEventHandler("mt-chopshop:client:DesmancharRodas", function()
    QBCore.Functions.Progressbar("DesmancharRodas", "A DESMANCHAR JANTES", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharRodas")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Falhado!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharParachoques')
AddEventHandler("mt-chopshop:client:DesmancharParachoques", function()
    QBCore.Functions.Progressbar("DesmancharParachoques", "A DESMANCHAR PARACHOQUES", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        TriggerServerEvent("mt-chopshop:server:DesmancharParachoques")
    else
        QBCore.Functions.Notify("Falhado!", "error")
        end
    end)
end)

-- Menu para venda das peças
RegisterNetEvent('mt-chopshop:client:MenuDesmache', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Desmanche de peças de veiculos",
            txt = ""
        },
        {
            id = 2,
            header = "Motor de carro",
            txt = "Vai te dar uma boa quantia de Ferro, Ferro Velho, Alminio e Cobre",
            params = {
                event = "mt-chopshop:client:DesmancharMotor",
            }
        },
        {
            id = 3,
            header = "Portas de carro",
            txt = "Vai te dar uma boa quantia de Aluminio e Borracha",
            params = {
                event = "mt-chopshop:client:DesmancharPortas",
            }
        },
        {
            id = 4,
            header = "Vidros de carro",
            txt = "Vai te dar uma boa quantia de Vidro",
            params = {
                event = "mt-chopshop:client:DesmancharVidros",
            }
        },
        {
            id = 5,
            header = "Pneus de carro",
            txt = "Vai te dar uma boa quantia de Borracha",
            params = {
                event = "mt-chopshop:client:DesmancharPneus",
            }
        },
        {
            id = 6,
            header = "Parachoques de carro",
            txt = "Vai te dar uma boa quantia de Plástico",
            params = {
                event = "mt-chopshop:client:DesmancharParachoques",
            }
        },
        {
            id = 7,
            header = "Farois de carro",
            txt = "Vai te dar uma boa quantia de Plástico e de Vidro",
            params = {
                event = "mt-chopshop:client:DesmancharFarois",
            }
        },
        {
            id = 8,
            header = "Jantes de carro",
            txt = "Vai te dar uma boa quantia de Aluminio e Plástico",
            params = {
                event = "mt-chopshop:client:DesmancharRodas",
            }
        },
        {
            id = 9,
            header = "Fechar",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

-- Target para desmanchar
CreateThread(function() 
    exports['qb-target']:AddBoxZone("Desmanche", vector3(2354.35, 3134.15, 48.21), 20, 20,  {
      name = "Desmanche",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "mt-chopshop:client:Desmanchar",
          icon = 'fas fa-car',
          label = 'Desmanchar veiculo',
        }
      },
      distance = 5,
    })
end)

-- Target para desmanchar peças
CreateThread(function()
    exports['qb-target']:AddBoxZone("DesmanchePecas", vector3(-521.36, -1625.32, 17.8), 2, 2,  {
      name = "DesmanchePecas",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "mt-chopshop:client:MenuDesmache",
          icon = 'fas fa-car',
          label = 'Desmanchar peças de veiculos',
        }
      },
      distance = 2.5,
    })
end)