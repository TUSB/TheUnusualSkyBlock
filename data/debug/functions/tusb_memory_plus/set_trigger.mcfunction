
# トリガー適用


data modify storage item: Item set from entity @s Item
data modify storage item: Item.tag.Skill.Trigger set from storage skill: TUSBM.ActTrigger

tellraw @p [{"text":" →ここ← ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #TUSBメモリーの回数を指定して実行！ _ "}},{"text":"をクリックして、TUSBMの回数を指定してください。"}]

data remove storage skill: TUSBM.ActTrigger
data modify entity @s Item set from storage item: Item