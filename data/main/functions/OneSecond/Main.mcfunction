### １秒経過処理
scoreboard players add #SecCount Global 1
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test #SecCount Global 0 0
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /worldborder warning distance 0
### コマンドエリア退避
tp @a[x=-1923,y=3,z=-202,dx=53,dy=16,dz=133,m=adventure] -1896.0 25 -136.0
### 静止飛翔物消去
scoreboard players tag @e[tag=FlyingObject] add Garbage {PortalCooldown:1}
entitydata @e[tag=FlyingObject] {PortalCooldown:1}
### MobCloud維持
execute @e[tag=MobCloud] ~ ~ ~ /function usb:OneSecond/MobCloud/Set5 if @e[dx=0,tag=Enemy,c=1]
### サバイバルスポナー消去
execute @e[tag=SpawnerCore] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 /kill @e[dx=0,tag=Spawner]
### スポナー等消去
scoreboard players tag @e[tag=FloatingRequired] add Garbage {OnGround:true}
scoreboard players tag @e[tag=CooldownRequiredLong] add Garbage {PortalCooldown:0}
scoreboard players tag @e[type=minecraft:spawner_minecart,tag=CooldownRequired] add Garbage {PortalCooldown:300}
### 祈り処理
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test Prayable Settings 1 *
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneSecond/Pray/Show if @s[score_Conditional_min=1]
### ヴォイド死
execute @a[m=!spectator] ~ ~ ~ detect ~ ~ ~ minecraft:structure_void 0 /kill @s
### MOBブロック設置
function usb:OneSecond/MobBlock/Set
### 死の宣告
function usb:OneSecond/Doom/Root if @a[tag=Doom]
### イベント処理
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test Debug Settings * 0
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneSecond/Event/Root if @s[score_Conditional_min=1]
### 動物誘導イベントゴール
execute 0-0-1-0-1 ~ ~ ~ /execute 0-0-1-0-3 ~ ~ ~ /scoreboard players operation @e[r=5,tag=VillagerMeal] Freshness *= #-1 Const
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneSecond/VillagerMeal/Goal if @s[score_Conditional_min=1]
### トカルトトーチ処理
scoreboard players tag @a[score_Dimension_min=13,score_Dimension=13,tag=!SaveTorch,m=!spectator] add RemoveTorch
scoreboard players tag @a[tag=SaveTorch] remove SaveTorch
execute @a[tag=RemoveTorch] ~ ~ ~ /function usb:OneSecond/IceSheetFloat/RemoveTorch
### ゲッソー
execute @e[tag=Gesso] ~-16 ~ ~-16 /function usb:OneSecond/Gesso/Down if @p[dx=32,dy=-32,dz=32]
execute @e[tag=Gesso] ~-16 ~1 ~-16 /function usb:OneSecond/Gesso/Up if @p[dx=32,dy=32,dz=32]
