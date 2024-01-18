<h1 align="center"><a href="https://discord.gg/brocode" target="_blank" rel="noopener noreferrer">Brocode RadialMenu</a></h1>

This is a script similar to qb-radialmenu but just with the support for QBCore Users, Intending to use ox_lib radialmenu for their server.

## Installation

1. Download the script.
2. Add the script to your resources folder.
3. Follow the (Additional Steps) below.
4. Add `ensure BC_RadialMenu` to your server.cfg file.
5. Restart your server.

## Additional Steps

1. Open the following file: `ox_lib/resource/interface/client/radial.lua`
2. Add the following code to the line: [308](https://github.com/overextended/ox_lib/blob/9f5d880beedc315af94bbc24d2016a9a16df9b78/resource/interface/client/radial.lua#L308C1-L308C1)
```lua
TriggerEvent('qb-radialmenu:client:onRadialmenuOpen')
```

3. Search for the `function lib.hideRadial()` function and add the following code to the line: [120](https://github.com/overextended/ox_lib/blob/9f5d880beedc315af94bbc24d2016a9a16df9b78/resource/interface/client/radial.lua#L120)
```lua
TriggerEvent('qb-radialmenu:client:onRadialmenuClose')
```

4. Open the file `client/main.lua` and modify the SetupVehicleMenu function according to your preference. **(Optional)**

## Preview
https://github.com/TeamBroCode/BC_RadialMenu/assets/91739770/fac4975b-208d-437b-9a28-15412593f61b

## **Supports FontAwesome Icons!**

Get the name from [FontAwesome](https://fontawesome.com/icons/) and use the icon's name in the config.lua for the icon (no `fa-` or `#` just the name like `arrow-right`)

## Credits

This script was initially made by [QBOX](https://github.com/Qbox-project/qbx_radialmenu) and we do not own this code. We have just made it compatible with QBCore. All credits go to the original creator.