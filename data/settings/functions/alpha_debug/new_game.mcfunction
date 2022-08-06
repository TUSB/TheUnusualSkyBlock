#周回時

#周回数+1
execute store result score _ _ run data get storage v13alpha: Loops
execute store result storage v13alpha: Loops int 1 run scoreboard players add _ _ 1
#島のスポナー、コンテナ設置
execute in area:skylands positioned -256 100 768 at @e[tag=Spawner,tag=v13Alpha,distance=..128] run kill @e[tag=Spawner,distance=..1]
function settings:alpha_debug/container
function settings:alpha_debug/spawner
execute in area:skylands positioned -256 100 768 as @e[tag=Spawner,tag=v13Alpha,distance=..128] run function settings:alpha_debug/new_game_apply
#クリア時間リセット 本編では絶対実行しない
scoreboard players set $Seconds Count 0
scoreboard players set $TenSeconds Count 0
scoreboard players set $Minutes Count 0
scoreboard players set $Hours Count 0
#初期地点にTP ログアウトしているプレイヤーは考慮しない
tp @a -172 49 767 ~ ~
tellraw @a {"translate":"島のスポナーと報酬が復活した。","color":"green"}
playsound minecraft:block.beacon.power_select master @a -172 49 767 1 0.9
playsound minecraft:block.beacon.power_select master @a -172 49 767 1 0.92
#進捗リセット
data modify storage v13alpha: Advancements set value []
scoreboard players reset * BreakSpawner
advancement revoke @a from advancement:alpha/root
