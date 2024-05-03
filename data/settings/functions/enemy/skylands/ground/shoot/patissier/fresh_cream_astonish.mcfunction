### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:firework_rocket",CustomName:'{"translate":"ビックリーム","color":"#FF0000"}',NoGravity:true,Silent:true,Life:0.5,LifeTime:35,ShotAtAngle:true,PortalCooldown:140,Tags:[DelayedData,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {FireworksItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008,Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16777215]}]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"「ﾓｺﾞｺﾞｰ!!」%1$sは%2$sを頬張りすぎて喉を詰まらせてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.0d}],Attack:[{Name:"Damage",Player:{Damage:0d,DamageType:[Global,Blast]},Distance:{Max:2.0d},AEC:{effects:[{id:"minecraft:hunger",amplifier:30b,duration:250}]}},{Condition:[{Name:"RandomChance",Chance:2.0d}],Name:"Damage",Player:{Damage:0d,DamageType:[Global,Blast]},Distance:{Max:0.5d},AEC:{effects:[{id:"minecraft:invisibility",amplifier:6b,duration:5}]}}]}
#Function
playsound entity.witch.throw hostile @a[distance=..32] ~ ~ ~ 1.0 1.3 0.2
# Sample_01--Circle
particle cloud ^-0.0 ^0.2 ^-0.0 ^8.48 ^836900096.0 ^547355648.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^0.1 ^0.17 ^-0.0 ^414076896.0 ^717202176.0 ^560500928.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^0.17 ^0.1 ^-0.0 ^685459648.0 ^395750400.0 ^611168256.0 0.00000000043 0 force @a[distance=..32]
particle cloud ^0.2 ^-0.0 ^-0.0 ^846786432.0 ^-7.94 ^531933184.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^0.17 ^-0.1 ^0.0 ^723711040.0 ^-417834720.0 ^549232768.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^0.1 ^-0.17 ^0.0 ^414683456.0 ^-718252672.0 ^558704576.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^-0.0 ^-0.2 ^0.0 ^8.78 ^-866420736.0 ^499314592.0 0.00000000040 0 force @a[distance=..32]
particle cloud ^-0.1 ^-0.17 ^0.0 ^-432966144.0 ^-749919168.0 ^500161472.0 0.00000000040 0 force @a[distance=..32]
particle cloud ^-0.17 ^-0.1 ^0.0 ^-786532416.0 ^-454104768.0 ^418516160.0 0.00000000038 0 force @a[distance=..32]
particle cloud ^-0.2 ^-0.0 ^-0.0 ^-833205888.0 ^-7.81 ^552962752.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^-0.17 ^0.1 ^-0.0 ^-728369216.0 ^420524320.0 ^540959744.0 0.00000000041 0 force @a[distance=..32]
particle cloud ^-0.1 ^0.17 ^-0.0 ^-398702048.0 ^690572224.0 ^603445696.0 0.00000000043 0 force @a[distance=..32]
particle cloud ^0.1 ^0.1 ^0.1 ^501058880.0 ^501058880.0 ^705606016.0 0.00000000035 0 force @a[distance=..32]
particle cloud ^0.14 ^0.04 ^0.1 ^631972992.0 ^169336640.0 ^756264000.0 0.00000000038 0 force @a[distance=..32]
particle cloud ^0.14 ^-0.04 ^0.1 ^669139328.0 ^-179295296.0 ^721183680.0 0.00000000035 0 force @a[distance=..32]
particle cloud ^0.1 ^-0.1 ^0.1 ^537372800.0 ^-537372800.0 ^649969920.0 0.00000000032 0 force @a[distance=..32]
particle cloud ^0.04 ^-0.14 ^0.1 ^168996432.0 ^-630703232.0 ^757399232.0 0.00000000038 0 force @a[distance=..32]
particle cloud ^-0.04 ^-0.14 ^0.1 ^-174434704.0 ^-650999360.0 ^738764032.0 0.00000000036 0 force @a[distance=..32]
particle cloud ^-0.1 ^-0.1 ^0.1 ^-474453152.0 ^-474453152.0 ^741477120.0 0.00000000037 0 force @a[distance=..32]
particle cloud ^-0.14 ^-0.04 ^0.1 ^-679669248.0 ^-182116784.0 ^710551296.0 0.00000000035 0 force @a[distance=..32]
particle cloud ^-0.14 ^0.04 ^0.1 ^-669858752.0 ^179488064.0 ^720467456.0 0.00000000035 0 force @a[distance=..32]
particle cloud ^-0.1 ^0.1 ^0.1 ^-467092192.0 ^467092192.0 ^750766016.0 0.00000000037 0 force @a[distance=..32]
particle cloud ^-0.04 ^0.14 ^0.1 ^-180126912.0 ^672243200.0 ^718083200.0 0.00000000035 0 force @a[distance=..32]
particle cloud ^0.04 ^0.14 ^0.1 ^182667744.0 ^681725184.0 ^708437120.0 0.00000000035 0 force @a[distance=..32]

