##############################
### ピアッシングエイム発動
##############################

###秒数設定
scoreboard players operation @s PiercingAim = _ _
###メッセージ
tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ピアッシングエイム","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"の効果！"]
###演出
function makeup:skill/act/hunter/piercing_aim/act1
