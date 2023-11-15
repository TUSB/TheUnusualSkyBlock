# setblock ~ ~ ~ lodestone replace
setblock ~ ~ ~ spawner destroy

#ダメージ表示
data modify storage popup: data set value {prefix:'" "',duration:0.5,value_prefix:'< ',value_suffix:' >',format:'{"text":"","color":"#FB80F8"}',size:1.0}
execute store result storage popup: data.value int 1 run scoreboard players get _ _
execute positioned ~ ~1.35 ~ run function popup:
