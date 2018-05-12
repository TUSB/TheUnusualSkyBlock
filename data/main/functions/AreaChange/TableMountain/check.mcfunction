#侵入処理
scoreboard players set @s Dimension 11
scoreboard players set @s Dimension 99 {Inventory:[{}]}
scoreboard players set @s[score_EnderChestOpened_min=1] Dimension 99 {EnderItems:[{}]}
tp @s[score_Dimension_min=99,score_Dimension=99] 134.0 52.0 -450.0 180 0
tellraw @s[score_Dimension_min=99,score_Dimension=99] {"text":"エンダーチェスト内を含む\nアイテム持ち込み禁止エリアです！","color":"red","bold":"true"}
#本処理
function usb:AreaChange/TableMountain if @s[score_Dimension_min=11,score_Dimension=11]
