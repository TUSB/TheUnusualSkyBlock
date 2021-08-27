##############################
### 真空斬り待機
##############################

### 自身の的探索
scoreboard players operation $Aerial ID = @s ID
execute as @e[tag=Aerial] if score @s ID = $Aerial ID run tag @s add ActiveAerial
### 的を持ってない場合は生成
execute unless entity @e[tag=ActiveAerial,limit=1] run summon minecraft:horse ~ ~-3 ~ {Silent:true,NoAI:true,AbsorptionAmount:1E10f,ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:127b,ShowParticles:false}],Tags:[CooldownRequired,Aerial,ActiveAerial],Team:NoCollision}
scoreboard players operation @e[tag=ActiveAerial,limit=1] ID = @s ID
### 的の寿命延長
data merge entity @e[tag=ActiveAerial,limit=1] {PortalCooldown:1}
### 非アクティブ時下に
tp @e[tag=ActiveAerial,limit=1] ~ ~-3 ~
### アクティブ時前に
execute if score @s SprintOneCm matches 1.. positioned ~ ~1 ~ positioned ^ ^ ^4.4 unless entity @e[distance=..6,tag=Projectile,limit=1] run tp @e[tag=ActiveAerial,limit=1] ~ ~ ~
### 的探索終了
tag @e[tag=ActiveAerial,limit=1] remove ActiveAerial
