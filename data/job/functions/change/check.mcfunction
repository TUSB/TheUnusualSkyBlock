
### 職業変更 制限チェック

execute if score @s ChangeJobLock matches ..0 run function job:change/
execute if score @s ChangeJobLock matches 1.. run function makeup:job/change/failed

# トリガーリセット
scoreboard players reset @s ChangeJob
scoreboard players enable @s ChangeJob
