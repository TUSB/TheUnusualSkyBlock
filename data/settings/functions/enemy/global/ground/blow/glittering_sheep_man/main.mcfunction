### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"きらめくヒツジンさん","color":"#FF009A"}',IsBaby:true,Silent:true,Team:"None",PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,CallOnAttack,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Unbreakable:true}},{id:"minecraft:golden_leggings",Count:1b,tag:{Unbreakable:true}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Unbreakable:true}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"きらめくヒツジンさん",Id:[I;1,0,71,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2JmMDMzYTIzM2I5ZTUyNzEyM2E3YjNiMTYwY2I2N2I2N2M1NWQ2MTVkMGMwMzJmODQxZjM0NzZmMjkyYzE0MSJ9fX0="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.01d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 1
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 7
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 128
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 9999
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier7/common",Count:1,CountRange:2,Chance:1d},{Loot:"item:item/iron_nugget/currency_megaton_emerald",Count:1,CountRange:63,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:1,CountRange:63,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:1,CountRange:63,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:1,CountRange:63,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは勇敢にも挑んだが哀れにも%2$sの持っていた金の羊毛の角に当たってしまいその日は土に還った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sヒツジン界において最強の存在。どうやらチュートリアルは終わったらしいぞ。ヒューマン。","with":[{"translate":"【能力：ワープ・格闘・反撃・射的】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Blink",Count:5,Chance:1d}],Death:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DeathSound]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Light]},{Name:"ChangeStatus",Defense:{Add:-20,Limit:0}},{Condition:[{Name:"MP",MP:1}],Name:"ChangeTurn",Set:2}],Attack:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]}],Tick:[{Name:"Function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:160,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Light]},{Name:"ChangeStatus",Defense:{Add:-30,Limit:0}},{Condition:[{Name:"MP",MP:1}],Name:"ChangeTurn",Set:2}]}]},{Interval:{Min:1,Max:3,Current:1},Loop:{Max:1,Current:1,Range:3},Call:[{Condition:[{Name:"MinMP",Inverse:true,MP:99,Percent:true}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Teleport]},{Condition:[{Name:"MinMP",Inverse:true,MP:99,Percent:true}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:64,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,-15f],Speed:2d,SpeedRange:6d,Absolute:{Vertical:true}}],Name:"Teleport"}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,AttackSound,Teleport]},{Name:"ChangeAI",Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Light]},{Name:"ChangeStatus",Defense:{Add:-30,Limit:0}}]},{Settings:[{Name:"At",Target:{Look:"Friendly",Radius:64,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-15f],DirectionRange:[360f,-15f],Speed:2d,SpeedRange:6d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:gold_block",Count:1b},{}]}},{Name:"DelayAction",Tags:["Casting","FinishingMove"]}],MP:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:60,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}]},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[10f,10f],DirectionRange:[-20f,-20f]}],Name:"Laser",Laser:"YellowLaser",Loop:64},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:64d}}],Name:"Function",Tags:[Global,Event,Function,AttackSound,Warning]}],MP:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:60,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[10f,10f],DirectionRange:[-20f,-20f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,GlitteringSheepMan,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Global,Ground,Blow,GlitteringSheepMan,BulletParticle]}],MP:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Blink",Count:1,Chance:0.25d},{Name:"MergeNBT",NBT:{HandItems:[]}},{Name:"ChangeTurn",Set:1}]}]}]}
