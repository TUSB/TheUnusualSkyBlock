
###潜在能力割り振り画面

#時間表示
execute store result score _ PotentialLock run time query gametime
scoreboard players operation _ PotentialLock -= @s PotentialLock
scoreboard players set _ _ -1200
scoreboard players operation _ PotentialLock /= _ _
scoreboard players add _ PotentialLock 60
scoreboard players operation @s PotentialLock >< _ PotentialLock

function job:potentials/get_point

tellraw @s [{"translate":"キャパシティポイントで潜在能力を引き出せます。"}," ",{"translate":"総CP:%1$s 残りCP:%2$s","with":[{"score":{"name": "_","objective": "AllExp"},"color":"green"},{"score":{"name":"_","objective":"Exp"},"color":"green"}]}]

tellraw @s [{"translate":" ❖%1$s","color": "green","with":[{"translate":"消費MP軽減","color":"white"}]},":      ",{"translate":"%1$s%% %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "MPCostRate"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 11"}},{"text":"-1","color":"gold"}]},{"translate":" ❖%1$s","color": "green","with":[{"translate":"スキル使用不可時間短縮","color":"white"}]},":",{"translate":"%1$s%% %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "IntervalRate"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 12"}},{"text":"-1","color":"gold"}]}]
tellraw @s [{"translate":" ❖%1$s","color": "green","with":[{"translate":"オーラ継続時間延長","color":"white"}]},":   ",{"translate":"%1$s%% %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "AuraRate"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 13"}},{"text":"-1","color":"gold"}]},{"translate":" ❖%1$s","color": "green","with":[{"translate":"免疫力最低値","color":"white"}]},":      ",{"translate":"%1$s%% %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "ResistMin"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 14"}},{"text":"-1","color":"gold"}]}]
tellraw @s [{"translate":" ❖%1$s","color": "green","with":[{"translate":"属性攻撃力追加","color":"white"}]},": ",{"translate":"%1$s%% %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "ElementDamageAdd"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 15"}},{"text":"-1","color":"gold"}]},{"translate":" ❖%1$s","color": "green","with":[{"translate":"他職スキル解放","color":"white"}]},":  ",{"translate":"%1$sLV %2$s(%3$sCP)","color":"white","with":[{"score":{"name": "_","objective": "SubLevel"},"color": "green"},{"translate":"⇧","color": "aqua","bold": true,"clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 21"}},{"text":"-2","color":"gold"}]}]

## 制限なし
tellraw @s[scores={PotentialLock=..0}] [{"translate":" ❖%1$s","color": "green","with":[{"translate":"他ジョブレベルアップ","color":"white"}]},": ",{"translate":"%1$s(%2$sCP)","color":"white","with":[{"translate":"✞","color": "aqua","clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 31"}},{"text": "-1","color":"gold"}]},"\n",{"translate":" ❖%1$s","color": "green","with":[{"translate":"キャパシティポイントリセット","color":"white"}]},": ",{"translate":"%1$s(%2$sCP)","color":"white","with":[{"translate":"✞","color": "aqua","clickEvent": {"action": "run_command","value": "/trigger PotentialTrigger set 32"}},{"text": "0","color":"gold"}]}]

## 制限あり
tellraw @s[scores={PotentialLock=1..}] [{"translate":" ❖%1$s","color": "green","with":[{"translate":"他ジョブレベルアップ","color":"white"}]},": ",{"translate":"%1$s(%2$sCP)","color":"white","with":[{"translate":"✞","color": "black"},{"text": "-1","color":"gold"}]},"\n",{"translate":" ❖%1$s","color": "red","with":[{"translate":"キャパシティポイントリセット","color":"gray"}]},": ",{"translate":"%1$s(%2$sCP)","color":"white","with":[{"translate":"制限 残り%1$s分","with": [{"score":{"name": "@s","objective": "PotentialLock"}}]},{"text": "0","color":"gold"}]}]

execute if score @s PotentialLock matches 1.. run scoreboard players operation @s PotentialLock >< _ PotentialLock
scoreboard players enable @s PotentialTrigger
scoreboard players reset @s PotentialPrev
