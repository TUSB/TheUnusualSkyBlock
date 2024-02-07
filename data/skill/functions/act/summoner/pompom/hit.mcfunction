##############################
### ぽむぽむ花火直撃
##############################

### 直撃したモブには投射物と範囲で2倍のダメージ
#ダメージをロード
function skill:damage/load
#ダメージ付与
execute as @e[distance=..2,tag=Enemy] run function skill:damage/apply/
#演出
function makeup:skill/act/summoner/pompom/hit
