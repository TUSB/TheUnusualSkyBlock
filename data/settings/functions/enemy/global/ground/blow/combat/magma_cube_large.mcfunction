### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:magma_cube",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnTimeOut,TickingRequired,HasLootTable,NoLootTableAdd],CustomName:'{"translate":"コンバットマグマキューブ"}',Size:4,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 180
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 90
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"ChangeTurn",Set:2},{Name:"Function",Tags:[Global,Event,Function,DeathCancel]}],Time:[{Name:"ChangeAI",Death:[{}]}],TurnCount:2,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Size:5}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Size:6}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{Size:7}}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:["Global","Blast"],DeathCause:'[{"translate":"%1$sは油断してしまったが為%2$sの自爆によって無残なオブジェに変わり果てた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:5d}},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Function",Tags:[Global,Event,Function,VanillaExplosion,Particle]},{Name:"ChangeAI",Death:[{}]},{Name:"Kill"}]}]}]}
