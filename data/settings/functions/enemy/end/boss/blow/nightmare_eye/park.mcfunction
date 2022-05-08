### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",NoAI:1b,CustomName:'{"translate":"ナイトメアパーク","color":"#FFFFFF"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Silent:1b,PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Message",Message:'{"translate":"ナイトメアが辺りを覆う...","color":"#FF0000"}'}],Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Target:{Look:"Friendly",Radius:30d,IgnoreBlocks:1b},Skill:[{Interval:{Min:50,Max:150,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:30d},Direction:[-90f,30f],DirectionRange:[180f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,Zombie,SpawnParticles],Level:30}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 1.0 0.8
