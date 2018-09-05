##############################
### ローテーションを0-360に収める
##############################

execute if score $RX1 Global matches ..-90001 run scoreboard players set $RX1 Global -90000
execute if score $RX1 Global matches 90001.. run scoreboard players set $RX1 Global 90000

execute if score $RY1 Global matches ..-1 run scoreboard players add $RY1 Global 360000
execute if score $RY1 Global matches 360001.. run scoreboard players remove $RY1 Global 360000
