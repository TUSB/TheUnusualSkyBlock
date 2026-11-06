#> settings:effect/too_bad_effects
### 特殊デバフの名前と説明の初期設定

#> 特殊デバフの名前を使用するとき。
#
# 特殊デバフにはhoverEventが用意される。
# 今回は翻訳のこともあり、場所によって内容が異なると大変なのでここで一括設定することにした。
#
# 使用例
# {"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}
#

data modify storage effect: BadEffectsName.Doom set value '{"translate":"死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"一定時間経過後、死亡する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Burn set value '{"translate":"火だるま","hoverEvent":{"action":"show_text","value":{"translate":"炎上ダメージが増加する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Freeze set value '{"translate":"凍結","hoverEvent":{"action":"show_text","value":{"translate":"一定時間完全拘束される。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Palsy set value '{"translate":"麻痺","hoverEvent":{"action":"show_text","value":{"translate":"スキルが発動しにくくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Confuse set value '{"translate":"混乱","hoverEvent":{"action":"show_text","value":{"translate":"進行方向が分からなくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Curse set value '{"translate":"呪詛","hoverEvent":{"action":"show_text","value":{"translate":"死亡時にアイテムが残らなくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Virus set value '{"translate":"病気","hoverEvent":{"action":"show_text","value":{"translate":"体力が回復しづらくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Tnt set value '{"translate":"トント","hoverEvent":{"action":"show_text","value":{"translate":"一定回数ダメージを受けると爆発する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Pale set value '{"translate":"ペイル","hoverEvent":{"action":"show_text","value":{"translate":"最大体力が減少する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Debility set value '{"translate":"衰弱","hoverEvent":{"action":"show_text","value":{"translate":"体力が一列になる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.RevivalSicknesss set value '{"translate":"復活酔い","hoverEvent":{"action":"show_text","value":{"translate":"ブロックを掘れなくなる。","color":"white"}},"color":"white"}'
