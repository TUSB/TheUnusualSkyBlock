##############################
### 看板書き込み
##############################

execute if entity @s[tag=Inn] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"dark_gray\",\"text\":\"\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\\u003d\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/inn/build\"}}",Text2:"{\"bold\":true,\"color\":\"dark_gray\",\"text\":\"宿\"}"}
execute if entity @s[tag=Dye_Summer] run data merge block ~ ~ ~ {Text1:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/inn/dye_summer\"}},{\"text\":\"\\u2726 \",\"color\":\"aqua\"},{\"text\":\"\\u8863\\u66ff\\u3048\\u88c5\\u7f6e\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" \\u2726\",\"color\":\"aqua\"}]",Text2:"{\"text\":\"=-=-=-=-=\"}",Text3:"[\"\",{\"text\":\"=-=\"},{\"text\":\"\\u590f\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"=-=\"}]",Text4:"{\"text\":\"=-=-=-=-=\"}"}