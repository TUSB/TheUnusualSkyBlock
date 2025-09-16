#> skill:act/white_mage/halo_bound/act1
#
# ヘイローバウンド召喚

scoreboard players set _ Level 4

#他ヘイローバウンドが周りにあったらそれの持続時間減少
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,distance=0.01..12] run data modify entity @s PortalCooldown set value 2

#ヘイローバウンドを召喚
execute if score _ Level matches 1 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired],PortalCooldown:101,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 2 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired],PortalCooldown:141,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 3 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired],PortalCooldown:181,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}
execute if score _ Level matches 4 run summon armor_stand ~ ~1 ~ {Tags:[Skill,HaloBound,CooldownRequired],PortalCooldown:321,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b,NoGravity:1b}

#NativeFlagをインクリメント
execute positioned ~ ~1 ~ run scoreboard players add @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] NativeFlag 1

#HaloBoundスコアをセット
execute positioned ~ ~1 ~ run scoreboard players add @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] HaloBound 11

#Lvによって引き寄せ強化
execute if score _ Level matches 1 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..4,tag=Enemy] @s

execute if score _ Level matches 2 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..5,tag=Enemy] @s

execute if score _ Level matches 3 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..6,tag=Enemy] @s

execute if score _ Level matches 4 positioned ~ ~1 ~ as @e[type=armor_stand,tag=HaloBound,tag=!Initialized,distance=..0.01] run tp @e[distance=..10,tag=Enemy] @s
