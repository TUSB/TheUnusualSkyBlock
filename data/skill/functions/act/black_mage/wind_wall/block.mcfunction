
### ウィンドウォール迎撃・竜巻召喚

###弾の設定をする
summon minecraft:arrow ^ ^ ^ {Tags:[NativeTask,FlyingRequired,Skill,WindWallTornado,HitDamage]}
data modify storage skill: NBT set value {}

###モーションを取得する
data modify storage skill: NBT.Motion set from entity @s Motion
data modify storage skill: NBT.NoGravity set from entity @s NoGravity

###モーションを反転する
execute store result storage skill: NBT.Motion[0] double 0.001 run data get storage skill: NBT.Motion[0] -1000
execute store result storage skill: NBT.Motion[1] double 0.001 run data get storage skill: NBT.Motion[1] -1000
execute store result storage skill: NBT.Motion[2] double 0.001 run data get storage skill: NBT.Motion[2] -1000

###跳ね返したプレイヤー記録
data modify storage skill: NBT.Owner set from storage tusb_player: UUID

###ダメージ計算 Attack=Damage、属性ダメージなし、HitDamage、Level2でダメージ2倍
execute if score _ WindWall matches 10000..11200 run scoreboard players operation @s Attack += @s Attack

#保存
scoreboard players operation @e[tag=WindWallTornado,distance=0] Damage = @s Attack
data modify entity @e[tag=WindWallTornado,distance=0,limit=1] {} merge from storage skill: NBT
data remove storage skill: NBT

kill @s

function makeup:skill/act/black_mage/wind_wall/block
