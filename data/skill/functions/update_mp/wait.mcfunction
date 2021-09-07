
### MPウェイト更新

##マナリフレッシュ
# scoreboard players operation _ _ = @s ManaRefresh
# scoreboard players operation _ _ %= $10 Const
# scoreboard players add _ _ 1
#下のコマンドは仮なので、マナリフレッシュのときに削除する。
scoreboard players set _ _ 1

### 0でMP回復
scoreboard players operation @s MPConsumption -= _ _

### MPウェイトリセット
scoreboard players add @s MPHealingWait 2000
scoreboard players set _ _ 1
scoreboard players operation @s MPHealingWait > _ _

### マナリフレッシュカウントダウン
# scoreboard players remove @s[scores={ManaRefresh=10..}] ManaRefresh 10
# scoreboard players reset @s[scores={ManaRefresh=..10}] ManaRefresh

### MP回復反映
execute if entity @s[nbt={ActiveEffects:[{Id:17b}]}] run scoreboard players set @s MPConsumption 0
scoreboard players operation @s MP -= @s MPConsumption
scoreboard players reset @s MPConsumption

### MP上限補正
scoreboard players operation @s MP < @s MPMax

### MPバー反映
function player:mp_bar/set
