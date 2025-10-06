#> skill:act/white_mage/halo_bound/act1
#
# ヘイローバウンド召喚

# 他ヘイローバウンドが周りにあったらそれの持続時間減少
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,distance=..12] run data modify entity @s PortalCooldown set value 2

# ダメージ取得
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.WhiteMage[{Name:"ヘイローバウンド",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.WhiteMage[{Name:"ヘイローバウンド",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.WhiteMage[{Name:"ヘイローバウンド",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: damage set from storage skill: Data.WhiteMage[{Name:"ヘイローバウンド",Level:4}].Damage

# ヘイローバウンドを召喚
execute if score _ Level matches 1 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired,NativeTask],PortalCooldown:40,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 2 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired,NativeTask],PortalCooldown:55,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 3 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired,NativeTask],PortalCooldown:70,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 4 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired,NativeTask],PortalCooldown:100,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}

# ダメージをセーブ
execute positioned ~ ~1 ~ as @e[tag=HaloBound,tag=!Initialized,distance=..0.01] run function skill:damage/save

# Lvによって引き寄せ強化
execute if score _ Level matches 1 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..4,tag=Enemy,tag=!Unmoved] @s
execute if score _ Level matches 2 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..5,tag=Enemy,tag=!Unmoved] @s
execute if score _ Level matches 3 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..6,tag=Enemy,tag=!Unmoved] @s
execute if score _ Level matches 4 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..10,tag=Enemy,tag=!Unmoved] @s
