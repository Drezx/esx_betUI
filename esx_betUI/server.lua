ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_betUI:bet')
AddEventHandler('esx_betUI:bet', function(type)
    local xPlayer = ESX.GetPlayerFromId(source)
    if type == 1 then
        local random = math.random(1,2)
        if random == 1 then
            xPlayer.removeMoney(12500)
            TriggerClientEvent('esx:showNotification', source, '~r~Nie udało ci~s~ się wygrać zakładu')
        else
            xPlayer.addMoney(25000)
            TriggerClientEvent('esx:showNotification', source, '~g~Wygrałeś~s~ z zakładu ~g~25.000$')
        end
    elseif type == 2 then
        local random = math.random(1,100)
        if random <= 64 then
            xPlayer.addMoney(30000)
            TriggerClientEvent('esx:showNotification', source, '~g~Wygrałeś~s~ z zakładu ~g~30.000$')
        else
            xPlayer.removeMoney(15500)
            TriggerClientEvent('esx:showNotification', source, '~r~Nie udało ci~s~ się wygrać zakładu')
        end
    elseif type == 3 then
        local random = math.random(1,100)
        if random <= 58 then
            xPlayer.addMoney(30000)
            TriggerClientEvent('esx:showNotification', source, '~g~Wygrałeś~s~ z zakładu ~g~30.000$')
        else
            xPlayer.removeMoney(14500)
            TriggerClientEvent('esx:showNotification', source, '~r~Nie udało ci~s~ się wygrać zakładu')
        end
    elseif type < 4 then
        DropPlayer(source, 'esx_betUI:cheating')
        return
    end
end)