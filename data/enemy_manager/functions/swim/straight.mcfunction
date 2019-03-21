##############################
### 直進Swim 初期化
##############################

execute positioned as @s anchored eyes facing entity @e[team=Friendly,gamemode=!creative,gamemode=!spectator,nbt=!{Health:0f},sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
function calc_manager:save/rotation
