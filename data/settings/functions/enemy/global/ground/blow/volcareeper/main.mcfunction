### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"ヴォルケリーパー","color":"#FFFFFF","bold":true}',ExplosionRadius:0b,Fuse:120s,HasVisualFire:true,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.29d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier4/common",Count:1,Chance:0.28d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s取扱注意！ 負傷が爆発のスイッチだ！ 残った矢に触れると彼方に消し飛ぶぞ！！","with":[{"translate":"【能力：地雷・爆撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Death:[{Name:"Spawn",Count:15,CountRange:15,SpawnEntities:[[{Tags:[Global,Ground,Blow,Volcareeper,VolcanicBlast],Level:1}]]}],Time:[{Name:"ChangeAI",Death:[{}]}],Damage:[{Name:"Kill"}],Tick:[{Name:"Function",Tags:[Global,Ground,Blow,Volcareeper,ParticleAndSound1]}]}
