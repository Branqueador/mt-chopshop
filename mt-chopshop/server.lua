local QBCore = exports['qb-core']:GetCoreObject()

-- Evento para desmanchar o veiculo
RegisterServerEvent('mt-chopshop:server:Desmanchar', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("rodas_carro", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["rodas_carro"], "add")
    Player.Functions.AddItem("portas_carro", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["portas_carro"], "add")
    Player.Functions.AddItem("vidros_carro", 6)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["vidros_carro"], "add")
    Player.Functions.AddItem("capo_carro", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["capo_carro"], "add")
    Player.Functions.AddItem("parachoques_carro", 2)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["parachoques_carro"], "add")
    Player.Functions.AddItem("pneus_carro", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["pneus_carro"], "add")
    Player.Functions.AddItem("motor_carro", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["motor_carro"], "add")
    Player.Functions.AddItem("farois_carro", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["farois_carro"], "add")
    TriggerClientEvent('QBCore:Notify', scr, 'Carro desmanchado! Recebes-te algumas peças!')
end)

-- Evento para desmanchar Peças do veiculo
RegisterServerEvent('mt-chopshop:server:DesmancharFarois', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local farois = Player.Functions.GetItemByName("farois_carro")
    if farois ~= nil then

        if farois.amount >= 1 then
            Player.Functions.RemoveItem("farois_carro", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["glass"], "add")
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Farois Desmanchados!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharPortas', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local porta = Player.Functions.GetItemByName("portas_carro")
    if porta ~= nil then

        if porta.amount >= 1 then
            Player.Functions.RemoveItem("portas_carro", 1)
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            Player.Functions.AddItem("plastic", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["plastic"], "add")
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharMotor', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local motor = Player.Functions.GetItemByName("motor_carro")
    if motor ~= nil then

        if motor.amount >= 1 then
            Player.Functions.RemoveItem("motor_carro", 1)
            Player.Functions.AddItem("iron", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["iron"], "add")
            Player.Functions.AddItem("metalscrap", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["metalscrap"], "add")
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            Player.Functions.AddItem("copper", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["copper"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Motor Desmanchado!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharVidros', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local vidro = Player.Functions.GetItemByName("vidros_carro")
    if vidro ~= nil then

        if vidro.amount >= 1 then
            Player.Functions.RemoveItem("vidors_carro", 1)
            Player.Functions.AddItem("glass", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["glass"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Vidros Desmanchados!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharPneus', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local pneu = Player.Functions.GetItemByName("pneus_carro")
    if pneu ~= nil then

        if pneu.amount >= 1 then
            Player.Functions.RemoveItem("pneus_carro", 1)
            Player.Functions.AddItem("rubber", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["rubber"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Penus Desmanchados!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharParachoques', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local parachoque = Player.Functions.GetItemByName("parachoques_carro")
    if parachoque ~= nil then

        if parachoque.amount >= 1 then
            Player.Functions.RemoveItem("parachoques_carro", 1)
            Player.Functions.AddItem("plastic", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["plastic"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Parachoques Desmanchado!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharRodas', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local rodas = Player.Functions.GetItemByName("rodas_carro")
    if rodas ~= nil then

        if rodas.amount >= 1 then
            Player.Functions.RemoveItem("rodas_carro", 1)
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Jantes Desmanchadas!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'Não tens os items corretos...', 'error')
        end
    end
end)