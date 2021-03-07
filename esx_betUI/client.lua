RegisterNetEvent('esx_betUI:showUI')
AddEventHandler('esx_betUI:showUI', function()
	SetNuiFocus(true, true)
	SendNUIMessage({
		open = true
	})
end)

RegisterCommand('shop', function()
	TriggerEvent('esx_betUI:showUI')
end, false)


RegisterNUICallback('1', function(data, cb) 
	TriggerServerEvent('esx_betUI:bet', 1)
end)

RegisterNUICallback('2', function(data, cb) 
	TriggerServerEvent('esx_betUI:bet', 2)
end)

RegisterNUICallback('3', function(data, cb)
	TriggerServerEvent('esx_betUI:bet', 3) 
end)


RegisterNUICallback('zamknij', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
		open = false
	})
end)

