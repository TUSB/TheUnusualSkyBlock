#アイテムのダメージに Effectiveness / 100 をかける
#一旦ストレージに退避
execute store result score _ _ run data get storage skill: Damage.Effectiveness
execute store result storage item: Item.AddDamage.Physical int 0.01 run scoreboard players operation _ Damage *= _ _
execute store result storage item: Item.AddDamage.Fire int 0.01 run scoreboard players operation _ ElementFire *= _ _
execute store result storage item: Item.AddDamage.Ice int 0.01 run scoreboard players operation _ ElementIce *= _ _
execute store result storage item: Item.AddDamage.Lightning int 0.01 run scoreboard players operation _ ElementLightning *= _ _
execute store result storage item: Item.AddDamage.Light int 0.01 run scoreboard players operation _ ElementLight *= _ _
execute store result storage item: Item.AddDamage.Dark int 0.01 run scoreboard players operation _ ElementDark *= _ _
#スキルのダメージをロード、ブースト
function skill:damage/add/skill/magic
#合算
execute store result score _ _ run data get storage item: Item.AddDamage.Physical
scoreboard players operation _ Damage += _ _
execute store result score _ _ run data get storage item: Item.AddDamage.Fire
scoreboard players operation _ ElementFire += _ _
execute store result score _ _ run data get storage item: Item.AddDamage.Ice
scoreboard players operation _ ElementIce += _ _
execute store result score _ _ run data get storage item: Item.AddDamage.Lightning
scoreboard players operation _ ElementLightning += _ _
execute store result score _ _ run data get storage item: Item.AddDamage.Light
scoreboard players operation _ ElementLight += _ _
execute store result score _ _ run data get storage item: Item.AddDamage.Dark
scoreboard players operation _ ElementDark += _ _
