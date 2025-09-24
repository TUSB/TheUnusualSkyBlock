### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"アイスクリーパー","color":"#FFFFFF"}',Fuse:40s,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnTick,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s冷気の秘訣はおやじギャグ。","with":[{"translate":"【能力：追撃・凍結】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"merge_nbt",NBT:{TicksFrozen:2147483647}}],Attack:[{Name:"damage",Player:{DamageType:[Global,Blast]},MP:{MP:20},Distance:{Max:4d},AEC:{Particle:{type:"block",block_state:{Name:"ice"}},Duration:10,Radius:0.25f,potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:4b,duration:5}]}}}],Tick:[{Name:"function",Tags:[Global,Ground,Blow,IceCreeper,ParticleAndSound]}]}
