##############################
### めり込み死亡処理
##############################

gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"},"は  いきを  とめて  ぶろっくの  なかを  のぞきこんだ。\n…  からだが！！  うごかない！！\nそして、  いき  たえてしまった…。"]
gamerule showDeathMessages true
