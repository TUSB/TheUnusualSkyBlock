##############################
### 病気処理
##############################

### 病気カウント経過
scoreboard players remove @s VirusCount 1
### 病気回復処理呼び出し
execute if score @s VirusCount matches ..0 run function effect_manager:virus/cure
