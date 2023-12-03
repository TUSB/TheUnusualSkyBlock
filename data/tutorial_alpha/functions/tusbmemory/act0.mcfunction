tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"TUSBメモリー"}]},"\n",{"translate":"TUSBM（Temporary Use Skill Bio Memory）は、職業スキルとは異なるスキルである。\nどの職業でもMPを消費せず、デバフによる邪魔を無視してスキルを使用できる。\nアイテムに最初から付与されており、自身で付与はできない。"}]

execute as @a[distance=..7] at @s run function tutorial_alpha:tusbmemory/give

function makeup:tutorial_alpha/sound