#初期化 周回時は実行しないこと

#スポナー、コンテナ設置
execute in area:skylands positioned -256 100 768 run kill @e[tag=Spawner,distance=..128]
function settings:alpha_debug/ship_container
function settings:alpha_debug/container
function settings:alpha_debug/ship_spawner
function settings:alpha_debug/spawner
#ホームポイント設定
data modify storage skill: ReturnDefault set value {Pos:[-172d,49d,767d],Rotation:[0f,0f],Dimension:"area:skylands"}
#経験値、周回数、進捗リセット
scoreboard players set $World AllExp 0
data modify storage v13alpha: Loops set value 1
data modify storage v13alpha: Advancements set value []
scoreboard players reset * BreakSpawner
advancement revoke @a from advancement:alpha/root
#gamerule
gamerule doMobSpawning true
gamerule keepInventory false
gamerule doDaylightCycle true
