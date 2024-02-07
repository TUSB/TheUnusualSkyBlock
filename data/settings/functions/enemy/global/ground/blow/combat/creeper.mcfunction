### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"コンバットクリーパー"}',Fuse:20,ExplosionRadius:2b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnTimeOut,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.4d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 230
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 230
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 301
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 301
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s標準的なクリーパーです。","with":[{"translate":"【能力：追撃・置換】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,KillUpper]}],Time:[{Name:"Function",Tags:[Global,Event,Function,KillUpper]}],Attack:[{Name:"Damage",Player:{DamageType:["Global","Blast"],DeathCause:'[{"translate":"%1$sは%2$sに爆破解体された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:0d}}]}
