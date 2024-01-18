local trunkBusy = {}

RegisterNetEvent('qb-radialmenu:trunk:server:Door', function(open, plate, door)
    TriggerClientEvent('qb-radialmenu:trunk:client:Door', -1, plate, door, open)
end)

RegisterNetEvent('qb-trunk:server:setTrunkBusy', function(plate, busy)
    trunkBusy[plate] = busy
end)

RegisterNetEvent('qb-trunk:server:KidnapTrunk', function(targetId, closestVehicle)
    TriggerClientEvent('qb-trunk:client:KidnapGetIn', targetId, closestVehicle)
end)

lib.callback.register('qb-trunk:server:getTrunkBusy', function(_, plate)
    return trunkBusy[plate]
end)

lib.addCommand('getintrunk', {
    help = Lang:t("general.getintrunk_command_desc"),
}, function(source, args, raw)
    TriggerClientEvent('qb-trunk:client:GetIn', source)
end)

lib.addCommand('putintrunk', {
    help = Lang:t("general.putintrunk_command_desc"),
}, function(source, args, raw)
    TriggerClientEvent('qb-trunk:server:KidnapTrunk', source)
end)
