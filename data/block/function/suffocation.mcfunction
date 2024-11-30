#> block:suffocation
### めり込み死亡処理

gamerule showDeathMessages false
kill @s
tellraw @a [{"translate":"%1$sは  いきを  とめて  ぶろっくの  なかを  のぞきこんだ。\n…  からだが！！  うごかない！！\nそして、  いき  たえてしまった…。","with":[{"selector":"@s"}]}]
gamerule showDeathMessages true
