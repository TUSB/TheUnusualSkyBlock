
### ウィンドウォール迎撃・竜巻召喚

###弾の設定をする
summon minecraft:arrow ^ ^ ^ {Tags:[NativeTask,Skill,WindWallTornado]}

###モーションを取得する
data modify entity @e[tag=WindWallTornado,distance=0,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=WindWallTornado,distance=0,limit=1] NoGravity set from entity @s NoGravity

###モーションを反転する
execute as @e[tag=WindWallTornado,distance=0] store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] -1000
execute as @e[tag=WindWallTornado,distance=0] store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] -1000
execute as @e[tag=WindWallTornado,distance=0] store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] -1000

###跳ね返したプレイヤー記録
data modify entity @e[tag=WindWallTornado,distance=0,limit=1] Owner set from storage tusb_player: UUID

###ダメージをコピーする
scoreboard players set _ Damage 0
scoreboard players set _ ElementFire 0
scoreboard players set _ ElementIce 0
scoreboard players set _ ElementLightning 0
scoreboard players set _ ElementLight 0
scoreboard players set _ ElementDark 0
data modify storage skill: Damage.Hit set value 1b

scoreboard players operation _ Damage = @s Attack
execute if score _ WindWall matches 10000..11200 run scoreboard players operation _ Damage += _ Damage

execute as @e[tag=WindWallTornado,distance=0] run function skill:damage/save


kill @s

function makeup:skill/act/black_mage/wind_wall/block
