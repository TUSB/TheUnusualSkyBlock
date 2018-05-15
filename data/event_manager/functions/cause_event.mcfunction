##############################
### イベント発生処理
##############################

### イベント発生フラグ付与
tag @r[limit=5] add CauseEvent
### 祈りを捧げる表示
tag @a add Pray
### 嫌な予感演出
execute as @a at @s run playsound minecraft:block.portal.travel master @s ~ ~100 ~ 10 0.5 1
worldborder warning distance 1000000
### イベント発生時は１分処理を遅らせる
scoreboard players set $Second Global -8

