#> item:sign/click/summoner_soul
##############################
### 召喚士の魂
##############################


## 手にアイテムを持っているかを確認
## 持っていなかったらエラーメッセージを返す
execute unless items entity @s weapon.mainhand * run tellraw @s {"translate":"手に何かアイテムを持ってください。","color":"#CF1E0A"}
execute unless items entity @s weapon.mainhand * run function makeup:item/sign/soul_series/fail
execute if items entity @s weapon.mainhand * run function item:sign/soul_series/summoner/
