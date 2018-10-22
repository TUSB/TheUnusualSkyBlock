##############################
### 衣替え装置 冬
##############################

#春色に染める
fill ~-1 ~-2 ~-2 ~5 ~4 ~4 minecraft:pink_wool replace minecraft:light_gray_wool
data merge block ~ ~ ~ {Text1:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/tent_placer/dye_spring\"}},{\"text\":\"\\u2726 \",\"color\":\"aqua\"},{\"text\":\"\\u8863\\u66ff\\u3048\\u88c5\\u7f6e\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" \\u2726\",\"color\":\"aqua\"}]",Text2:"{\"text\":\"=-=-=-=-=\"}",Text3:"[\"\",{\"text\":\"=-=\"},{\"text\":\"\\u6625\",\"bold\":true,\"color\":\"light_purple\"},{\"text\":\"=-=\"}]",Text4:"{\"text\":\"=-=-=-=-=\"}"}
playsound minecraft:block.piston.contract master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:happy_villager ~2 ~ ~1 3 3 3 0 100 force
particle minecraft:firework ~2 ~ ~1 3 3 3 0 100 force
