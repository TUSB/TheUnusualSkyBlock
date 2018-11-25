##############################
### 潜在能力設定
##############################

### 一覧表示
execute if score @s PotentialTrigger matches 1 run function main:settings/potential/show
### 確認画面
execute if score @s PotentialTrigger matches 10..99 run function main:settings/potential/common/dialog
### MP表示リセット
execute if score @s PotentialTrigger matches 100..199 run function main:settings/potential/common/set
execute if score @s PotentialTrigger matches 100..199 run function main:settings/potential/show

### トリガーリセット
scoreboard players reset @s PotentialTrigger
scoreboard players enable @s PotentialTrigger
