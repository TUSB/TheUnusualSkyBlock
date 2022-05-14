### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Team:"Friendly",Silent:1b,CustomName:'{"translate":"亡霊騎士"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Team:"Friendly",NoGravity:1b,PortalCooldown:1200,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:iron_sword",Count:1},{}],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;0,0,0,1],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NTk0MzQxMjI1MTUsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInNpZ25hdHVyZVJlcXVpcmVkIjp0cnVlLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjVjMjU2ZWJjM2JhZDI5ZTNiYWYwYTBhZmI5M2I5MTE2N2U3NjZiZGMyODU1YTljZDcxZjg3ZTg2NTg3ZGM5In19fQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Friendly,Blow,GhostKnight,ManifestationTime]}],Time:[{Name:"Kill"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Direction:[0f,0f],Speed:0.3d}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:3d,IgnoreBlocks:true},Half:"front"}]}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Mob:{Physical:10},Distance:{Min:0.5d,Max:3d}},{Name:"Function",Tags:[Global,Friendly,Blow,GhostKnight,SlashParticle]}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:3d,IgnoreBlocks:true},Half:"front"}]}}]}
