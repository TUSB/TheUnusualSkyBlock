##############################
### ターゲット希望距離読み込み
##############################

### 距離読み込み
execute store result score @s DesiredDistance run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineTarget.DesiredDistance
