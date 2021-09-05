##############################
### １秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 10.. run function main:ten_seconds
scoreboard players set $Second Count 0

### 停止飛翔物削除
execute as @e[tag=TickingRequired] run function entity:check_freeze

###スキル
#忍者
scoreboard players reset @a[scores={Choyaku=0..},nbt=!{ActiveEffects:[{Id:8b}]}] Choyaku
execute as @a[scores={Katon=1..}] at @s run function skill:act/ninja/katon/tick
execute as @a[scores={Mokuso=1..}] at @s run function skill:act/ninja/mokuso/tick
execute as @a[scores={Suiton=1..}] at @s run function skill:act/ninja/suiton/tick
#共通
execute as @a[scores={SkyWalk=1..}] at @s run function skill:act/common/sky_walk/tick

###状態異常耐性
execute as @a[scores={ResistEffects=1..}] at @s run function effects:resist
scoreboard players reset @a[scores={ResistLock=1..}] ResistLock

###特殊デバフ処理
execute as @a[tag=Burn,nbt={Fire:-20s}] at @s run function effects:burn/cure
execute as @a[scores={ConfuseCount=1..}] at @s run function effects:confuse/tick
execute as @a[scores={DoomCount=1..}] at @s run function effects:doom/proceed
execute as @a[scores={PalsyLevel=1..}] at @s run function effects:palsy/tick
execute as @a[scores={TntCount=0..}] at @s if block ~ ~ ~ water run function effects:tnt/cure
execute as @a[scores={VirusCount=1..}] run function effects:virus/tick

###MOBのSkillsの特殊項目をtrigger
execute as @e[tag=Mob,tag=HasAI] at @s run function entity:enemy/ai/one_second
