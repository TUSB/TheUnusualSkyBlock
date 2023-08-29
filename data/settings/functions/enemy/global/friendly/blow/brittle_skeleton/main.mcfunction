### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Team:"Friendly",CustomName:'{"translate":"脆い骸骨","color":"#FFFF00","bold":true}',PortalCooldown:600,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,CallOnAttack,CallOnTick,TickingRequired,SmartMotion]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Speed:{Set:25d,Range:10d},Gravity:{Set:100d}}],Death:[{Name:"Function",Tags:[Global,Friendly,Blow,BrittleSkeleton,ParticleAndSound]}],Damage:[{Name:"Kill"}],Attack:[{Name:"Kill"}],Tick:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d,MinRadius:0.5d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"SmartMotion",TP:true}],ProjectileDamage:{Physical:5,Dark:10}}
