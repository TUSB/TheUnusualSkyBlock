##############################
### 魅了開始処理
##############################

### ビットレイズ
scoreboard players operation $BitFlags Global = @s TemporaryEffects
scoreboard players set $Digit Global 32
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @s TemporaryEffects = $BitFlags Global

execute as @a[distance=..24,gamemode=!creative,gamemode=!spectator] facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
###---演出---Start
playsound minecraft:entity.witch.ambient master @a[distance=..24,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 3 1.5
playsound minecraft:entity.witch.ambient master @a[distance=..24,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 3 1.5
playsound minecraft:entity.witch.ambient master @a[distance=..24,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 3 1.5
playsound minecraft:block.brewing_stand.brew master @a[distance=..24,gamemode=!creative,gamemode=!spectator] ~ ~ ~ 3 1.7
###---演出---End
