
### ジン・スピリット コウモリ召喚

# ダメージを受けているMob数取得
execute store result score _ _ if entity @e[scores={Damage=1..}]
scoreboard players operation @s Damage += _ _

#回復コウモリ召喚 - 2tick後に現れる
# summon minecraft:bat ~ ~ ~ {PortalCooldown:400,Tags:[GinSpiritBat,TickingRequired,NativeTask,Initializing,Initialized],Invulnerable:true,Team:Light_Purple,DeathTime:19s,Attributes:[{Name:"generic.max_health",Modifiers:[{Amount:0.1d,UUID:[I;0,0,0,0]},{Amount:3.6d,UUID:[I;0,0,0,1]},{Amount:1d,UUID:[I;0,0,0,2]}]}],active_effects:[{id:"minecraft:invisibility",amplifier:127,duration:-1,show_particles:0b},{id:"minecraft:glowing",amplifier:127,duration:-1,show_particles:0b}]}
summon armor_stand ~ ~1 ~ {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1,SpawnEntities:[[{Tags:[Global,Friendly,Bullet,GinSpirit,Bat],Level:1}]]}}]}

#クールタイム設定
scoreboard players set @s Count 30

function makeup:skill/act/black_mage/gin_spirit/summon
