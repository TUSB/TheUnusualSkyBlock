##############################
### 看板書き込み
##############################

###宿の印版
execute if entity @s[tag=TentPlacer] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"dark_gray\",\"text\":\"===========\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/tent_placer/build\"}}",Text2:"{\"bold\":true,\"color\":\"dark_gray\",\"text\":\"宿\"}"}
###衣替え装置 夏
execute if entity @s[tag=Dye_Summer] run data merge block ~ ~ ~ {Text1:"[{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/tent_placer/dye_summer\"}},{\"text\":\"\\u2726 \",\"color\":\"aqua\"},{\"text\":\"\\u8863\\u66ff\\u3048\\u88c5\\u7f6e\",\"bold\":true,\"color\":\"aqua\"},{\"text\":\" \\u2726\",\"color\":\"aqua\"}]",Text2:"{\"text\":\"=-=-=-=-=\"}",Text3:"[{\"text\":\"=-=\"},{\"text\":\"\\u590f\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"=-=\"}]",Text4:"{\"text\":\"=-=-=-=-=\"}"}
###転移の印版
execute if entity @s[tag=VerticalTeleporter] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"light_purple\",\"text\":\" ✺   ✺   ✺\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/vertical_teleporter\"}}",Text2:"{\"bold\":true,\"color\":\"dark_aqua\",\"text\":\"⤊  転 移  ⤊\"}",Text3:"{\"bold\":true,\"color\":\"dark_blue\",\"text\":\"   ⤊    ⤊    ⤊\"}",Text4:"{\"bold\":true,\"color\":\"green\",\"text\":\" ░    ░    ░\"}"}
###全滅の印版
execute if entity @s[tag=WidowMaker] run data merge block ~ ~ ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/widow_maker\"}}",Text2:"{\"bold\":true,\"color\":\"white\",\"text\":\"_✞_✞_✞_\"}",Text3:"{\"bold\":true,\"color\":\"white\",\"text\":\"_✞_✞_✞_✞_\"}",Text4:"{\"text\":\"\"}"}
###白材強化の印版
execute if entity @s[tag=WhiteUpgrader] run data merge block ~ ~ ~ {Text1:"[{\"text\":\"▲ \",\"color\":\"dark_gray\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/white_upgrader\"}},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲       ▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"dark_gray\"}]",Text2:"[{\"text\":\"▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"dark_gray\"},{\"text\":\"白 材\",\"bold\":true,\"color\":\"black\"},{\"text\":\" ▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"dark_gray\"}]",Text3:"[{\"text\":\"▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"dark_gray\"},{\"text\":\"\\u5f37 \\u5316\",\"bold\":true,\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"dark_gray\"}]",Text4:"[{\"text\":\"▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲       ▲ \",\"color\":\"dark_gray\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"dark_gray\"}]"}
###黒材強化の印版
execute if entity @s[tag=BlackUpgrader] run data merge block ~ ~ ~ {Text1:"[{\"text\":\"▲ \",\"color\":\"yellow\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/black_upgrader\"}},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲       ▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"yellow\"}]",Text2:"[{\"text\":\"▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"yellow\"},{\"text\":\"黒 材\",\"bold\":true,\"color\":\"yellow\"},{\"text\":\" ▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"yellow\"}]",Text3:"[{\"text\":\"▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"yellow\"},{\"text\":\"\\u5f37 \\u5316\",\"bold\":true,\"color\":\"dark_blue\"},{\"text\":\" ▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"yellow\"}]",Text4:"[{\"text\":\"▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲       ▲ \",\"color\":\"yellow\"},{\"text\":\"▲\",\"color\":\"dark_blue\"},{\"text\":\" ▲\",\"color\":\"yellow\"}]"}
###解結晶の印版
execute if entity @s[tag=SealBreaker] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"red\",\"text\":\"✡ ✡ ✡\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/seal_breaker\"}}", Text2:"{\"bold\":true,\"color\":\"red\",\"text\":\"✡ 封 印 ✡\"}",Text3:"{\"bold\":true,\"color\":\"red\",\"text\":\"✡ 解 放 ✡\"}",Text4:"{\"bold\":true,\"color\":\"red\",\"text\":\"✡ ✡ ✡\"}"}
###蜘蛛の巣粉砕の印版_使い切り
execute if entity @s[tag=WebBreakerOnce] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"white\",\"text\":\"✧ ✧ ✧\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/web_breaker_once\"}}",Text2:"{\"bold\":true,\"color\":\"white\",\"text\":\"✧蜘蛛の巣✧\",\"bold\":true}",Text3:"{\"bold\":true,\"color\":\"white\",\"text\":\"✧ \\u0020粉砕\\u0020 ✧\",\"bold\":true}",Text4:"{\"bold\":true,\"color\":\"white\",\"text\":\"✧ ✧ ✧\"}"}
###蜘蛛の巣粉砕の印版_無限
execute if entity @s[tag=WebBreakerInf] run data merge block ~ ~ ~ {Text1:"[{\"text\":\"✂\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/web_breaker_inf\"}},{\"text\":\"✂\",\"color\":\"gold\"},{\"text\":\"✂ \"},{\"text\":\"ᚏ\",\"color\":\"white\"},{\"text\":\" ✂\"},{\"text\":\"✂\",\"color\":\"gold\"},{\"text\":\"✂\"}]",Text2:"[\"\",{\"text\":\"ᚏ \",\"color\":\"white\"},{\"text\":\"蜘 蛛 の 巣\",\"bold\":true},{\"text\":\" ᚏ\",\"color\":\"white\"}]",Text3:"[\"\",{\"text\":\"ᚏ ᚏ\",\"color\":\"white\"},{\"text\":\" 粉 砕 \",\"bold\":true},{\"text\":\"ᚏ ᚏ\",\"color\":\"white\"}]",Text4:"[\"\",{\"text\":\"✂\"},{\"text\":\"✂\",\"color\":\"gold\"},{\"text\":\"✂ \"},{\"text\":\"ᚏ\",\"color\":\"white\"},{\"text\":\" ✂\"},{\"text\":\"✂\",\"color\":\"gold\"},{\"text\":\"✂\"}]"}
###羊スポナー
execute if entity @s[tag=SheepSpawner] run data merge block ~ ~ ~ {Text1:"{\"bold\":true,\"color\":\"white\",\"text\":\"■ ■ ■\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function item_manager:sign/click/sheep_spawner\"}}", Text2:"{\"bold\":true,\"color\":\"white\",\"text\":\"■   羊   ■\"}",Text3:"{\"bold\":true,\"color\":\"white\",\"text\":\"■        ■\"}",Text4:"{\"bold\":true,\"color\":\"white\",\"text\":\"■ ■ ■\"}"}
