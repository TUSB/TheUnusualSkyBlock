##############################
### キアリク発動
##############################


###---演出---Start
execute as @a[distance=..10] run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"リレイズ","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にレイズの効果を得る。","color":"white"}},"の効果！"]
###---演出---End
