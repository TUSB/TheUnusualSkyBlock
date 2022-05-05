### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,DelayedData]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,6,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ3MDM2OTksInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83MmNiZWE5YWE1OWRmZTdhODQ2N2VjMTUxNmUwNTFlZmRlZGNkYTMxMzg0NmM1ODExY2Q0OGU1MDYzYzJkMyJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.05d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 10d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 50d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 80
#Function
playsound minecraft:block.amethyst_block.step ambient @a[distance=32] ~ ~ ~ 10 0.1 1
