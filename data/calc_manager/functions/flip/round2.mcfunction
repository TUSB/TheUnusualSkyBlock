##############################
### ローテーションを0-360に収める
##############################

execute if score $RX2 Global matches ..-90001 run scoreboard players set $RX2 Global -90000
execute if score $RX2 Global matches 90001.. run scoreboard players set $RX2 Global 90000

execute if score $RY2 Global matches ..-1 run scoreboard players add $RY2 Global 360000
execute if score $RY2 Global matches 360001.. run scoreboard players remove $RY2 Global 360000
