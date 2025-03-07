#> item:sign/click/dye_summer
##############################
### 衣替え装置 夏
##############################

#秋色に染める
#fill ~-1 ~-2 ~-2 ~5 ~4 ~4 minecraft:orange_wool replace minecraft:green_wool
#data merge block ~ ~ ~ {Text1:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item:sign/click/tent_placer/dye_autumn\"}},{\"text\":\"\\u2726 \",\"color\":\"aqua\"},{\"translate\":\"衣替え装置\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" \\u2726\",\"color\":\"aqua\"}]",Text2:"{\"text\":\"=-=-=-=-=\"}",Text3:"[\"\",{\"text\":\"=-=\"},{\"translate\":\"夏\",\"bold\":true,\"color\":\"gold\"},{\"text\":\"=-=\"}]",Text4:"{\"text\":\"=-=-=-=-=\"}"}
#playsound minecraft:block.piston.contract master @a[distance=..16] ~ ~ ~ 1 1.5
#particle minecraft:happy_villager ~2 ~ ~1 3 3 3 0 100 force
#particle minecraft:firework ~2 ~ ~1 3 3 3 0 100 force
