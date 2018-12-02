##############################
### 死の宣告処理
##############################

### 宣告カウント加算
scoreboard players remove @s DoomCount 1
scoreboard players operation $DoomDevided DoomCount = @s DoomCount
scoreboard players operation $DoomDevided DoomCount /= $3 Const
scoreboard players operation $DoomModuloed DoomCount = @s DoomCount
scoreboard players operation $DoomModuloed DoomCount %= $3 Const
### 宣告スコア表示
execute if score $DoomModuloed DoomCount matches 0 run tellraw @s {"score":{"name":"$DoomDevided","objective":"DoomCount"},"color":"dark_purple","bold":true}
### 宣告死亡処理呼び出し
execute if score $DoomModuloed DoomCount matches 0 if score $DoomDevided DoomCount matches 0 unless score @s MagicShield matches ..999 run function effect_manager:doom/death
execute if score $DoomModuloed DoomCount matches 0 if score $DoomDevided DoomCount matches 0 if score @s MagicShield matches ..999 run tellraw @s [{"text":"","color":"green"},{"text":"マジックシールド","color":"white","hoverEvent":{"action":"show_text","value":"次に受けたダメージを無効化する。","color":"white"}},"が",{"text":"死の宣告","color":"white","hoverEvent":{"action":"show_text","value":"一定時間経過後、死亡する。","color":"white"}},"を跳ね返した！"]
execute if score $DoomModuloed DoomCount matches 0 if score $DoomDevided DoomCount matches 0 if score @s MagicShield matches ..999 run playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 1
