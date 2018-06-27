##############################
### 死の宣告処理
##############################

### 宣告カウント加算
scoreboard players remove @s DoomCount 1
scoreboard players operation $DoomDevided DoomCount = @s DoomCount
scoreboard players operation $DoomDevided DoomCount /= $3 Const
scoreboard players operation $DoomModuloed DoomCount = @s DoomCount
scoreboard players operation $DoomModuloed DoomCount %= $3 Const
###---演出---Start
### 宣告スコア表示
execute if score $DoomModuloed DoomCount matches 0 run tellraw @s {"score":{"name":"$DoomDevided","objective":"DoomCount"},"color":"dark_red","bold":true}
###---演出---End
### 宣告死亡処理呼び出し
execute if score $DoomModuloed DoomCount matches 0 if score $DoomDevided DoomCount matches 0 run function effect_manager:doom/death
