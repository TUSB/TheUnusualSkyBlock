##############################
### 潜在能力設定
##############################

### 前回のトリガー値を２桁にする
scoreboard players operation @s PotentialPrev %= $100 Const

### 一覧表示
execute if score @s PotentialTrigger matches 1 run function main:settings/potential/show
### 確認画面
execute if score @s PotentialTrigger matches 10..99 unless score @s PotentialTrigger = @s PotentialPrev run function main:settings/potential/common/dialog
### 適用
execute if score @s PotentialTrigger matches 100..199 run function main:settings/potential/common/set
execute if score @s PotentialTrigger matches 10..99 if score @s PotentialTrigger = @s PotentialPrev run function main:settings/potential/common/skip

### 再表示
execute if score @s PotentialTrigger matches 100..199 run function main:settings/potential/show

### 前回のトリガー値保存
execute if score @s PotentialTrigger matches 100..199 run scoreboard players operation @s PotentialPrev = @s PotentialTrigger

### トリガーリセット
scoreboard players reset @s PotentialTrigger
scoreboard players enable @s PotentialTrigger

###---演出---Start
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
###---演出---End
