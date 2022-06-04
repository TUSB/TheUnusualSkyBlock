
### 真空斬りHit処理

#ダメージをロード
function skill:damage/load

#ダメージ付与
execute as @e[tag=Enemy,distance=..1] run function skill:damage/apply/

kill @s
