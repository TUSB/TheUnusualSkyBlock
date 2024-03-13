### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"ウォーデンもどき","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:1b,ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:28,Amplifier:0b,Duration:-1,ShowParticles:0b}],Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnDamage,CallOnAttack,CooldownRequired,HasLootTable,AnalyseLog,"AssaultWarden","SleepgaImmune","Unmoved"],PortalCooldown:7000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3080170},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3080170},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3080170},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"ウォーデンの頭",Id:[I;1,0,72,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIxNzExMjBhMGYxZTRlZTE1NmQ3MmQwODE0ZjQ3MTE3MTRmNTUxNGUwYzE0ZjQ1NzEwNTBmYWJjNDllM2ZiMCJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:10s}]}},{}],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 128d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 4d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 36d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value -50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 125
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 4000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/weapon/super_debaria",Count:1,Chance:0.3d},{Loot:"item:group/drop_item/tier6/common",Count:1,Chance:0.3d},{Loot:"item:item/carrot_on_a_stick/secret_exp_bug_memory_star",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s彼は取り憑かれてしまった、強大の力を宿す奴に……。彼は力を欲した、奴に少しでも近づくために……。","color":"#FF0000","with":[{"translate":"【能力：不明】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Ground,Shoot,AssaultWarden,Death]}],Damage:[{Name:"Function",Tags:[Skylands,Ground,Shoot,AbyssSwordman,Damage]}],Attack:[{Name:"Function",Tags:[Global,Ground,Shoot,FakeWarden,Attack]}],Passenger:{Type:"down",Check:true,Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SearchAndDestroy]}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:200},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,AssaultWarden,TripleSonicMain],Level:111}]]}]},{Interval:{Min:150,Max:250,Current:200},Loop:{Max:1,Current:1},Call:[{}]}]}]}
