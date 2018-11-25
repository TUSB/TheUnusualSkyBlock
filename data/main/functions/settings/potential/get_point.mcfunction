##############################
### ポイント各種計算
##############################

### 総ポイント算出
scoreboard players operation $TotalPoint Global = @s Level
scoreboard players remove $TotalPoint Global 50

### 残りポイント算出
scoreboard players operation $LeftPoint Global = $TotalPoint Global
function main:settings/potential/get_current
scoreboard players operation $LeftPoint Global -= $CurrentPoint Global
