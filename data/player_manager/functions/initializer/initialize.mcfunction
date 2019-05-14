##############################
### プレイヤーデータ初期化
##############################

### ID採番
function player_manager:initializer/define_id

### カーソル移動
function player_manager:move_cursor/player_id
### ジュークボックス配置
execute at 3-0-0-0-0 run setblock ~ ~ ~ minecraft:jukebox{RecordItem:{id:stone,Count:1b,tag:{Test:AAA}}}

# execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] run data modify entity @s Item.tag.Parameter.LocalMoveSettingsList set from entity @s Item.tag.Parameter.MoveSettingsList
