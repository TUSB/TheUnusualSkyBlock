##############################
### 衣替え装置 秋
##############################

#冬色に染める
fill ~ ~ ~ ~ ~ ~ minecraft:orange_wool replace minecraft:light_gray_wool
data merge block ~ ~ ~ {Text1:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/inn/dye_winter\"}},{\"text\":\"\\u2726 \",\"color\":\"aqua\"},{\"text\":\"\\u8863\\u66ff\\u3048\\u88c5\\u7f6e\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" \\u2726\",\"color\":\"aqua\"}]",Text2:"{\"text\":\"=-=-=-=-=\"}",Text3:"[\"\",{\"text\":\"=-=\"},{\"text\":\"\\u51ac\",\"bold\":true,\"color\":\"gray\"},{\"text\":\"=-=\"}]",Text4:"{\"text\":\"=-=-=-=-=\"}"}
playsound minecraft:block.piston.contract master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:happy_villager ~ ~3 ~ 3 3 3 0 100 force
particle minecraft:firework ~ ~3 ~ 3 3 3 0 100 force
