#スポナー破壊時
#採掘時はドロップなし 採掘時以外はロードストーンがドロップ
#採掘時と爆破時で分岐
execute unless entity @e[type=item,nbt={Item:{tag:{ExplodedLodestone:1b}}}] run function enemy:break_spawner/mined
execute as @e[type=item,nbt={Item:{tag:{ExplodedLodestone:1b}}}] run function enemy:break_spawner/exploded
