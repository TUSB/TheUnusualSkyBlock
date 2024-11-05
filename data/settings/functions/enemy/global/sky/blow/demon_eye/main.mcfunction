### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"デーモンアイ","color":"#FF0000","bold":true}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],IsBaby:1b,NoGravity:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,1,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjY4MjYyMjY3MjcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYWIzYmJjMmY5NDA3YmU0MGVmNzkzYjY5MzNmNGIzMjIyOTk5ZmUyOTU5ZWQwZmU5Y2ZhODFiY2Q0NCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sに呪われてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sめっっっちゃ目が乾いてきた。雨降らないかなぁー。","with":[{"translate":"【能力：格闘・移動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Global,Sky,Blow,DemonEye,Tick]}]}
