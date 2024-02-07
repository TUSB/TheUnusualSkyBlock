##############################
### ピアッシングエイム毎秒処理
##############################

scoreboard players remove @s PiercingAim 1
execute if score @s PiercingAim matches ..0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={PiercingAim=..0}] PiercingAim
