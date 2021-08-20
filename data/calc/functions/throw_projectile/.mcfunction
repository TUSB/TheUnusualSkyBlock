#Motionを保存
execute unless entity 0-0-0-0-0 run summon marker ^ ^ ^ {UUID:[I;0,0,0,0]}
execute in area:control_area positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1.55
data modify entity @s Motion set from entity 0-0-0-0-0 Pos
#Ownerを設定
data modify entity @s Owner set from entity @a[distance=0,limit=1,sort=nearest] UUID
#2t後にNoGravity解除
schedule function calc:throw_projectile/schedule 2t replace
#2t後までtag付与
tag @s add SkillProjectile
