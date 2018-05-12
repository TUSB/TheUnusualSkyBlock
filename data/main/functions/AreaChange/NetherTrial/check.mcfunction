#侵入処理
scoreboard players set @s Dimension -90
scoreboard players set @s Dimension -1 {Inventory:[{}]}
tp @s[score_Dimension_min=-1,score_Dimension=-1] 1.0 22.5 -52.5 180 -20
tellraw @s[score_Dimension_min=-1,score_Dimension=-1] {"text":"アイテム持ち込み禁止エリアです！","color":"red","bold":"true"}
#本処理
function usb:AreaChange/NetherTrial if @s[score_Dimension_min=-90,score_Dimension=-90]
