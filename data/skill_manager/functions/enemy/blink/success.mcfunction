##############################
### 幻影判定成功時処理
##############################

tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"幻影","color":"white","hoverEvent":{"action":"show_text","value":"放った矢が速くなり、落下しなくなる。","color":"white"}},"が消え去った。"]
scoreboard players reset @s Damage

###---演出---Start
###---演出---End
