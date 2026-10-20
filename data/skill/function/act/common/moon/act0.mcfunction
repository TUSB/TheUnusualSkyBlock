
### ムーン

execute if data storage area: capture.skylands{011:1b} run time set midnight

function makeup:skill/act/common/moon/act0
execute unless data storage area: capture.skylands{011:1b} run tellraw @a {"translate":"不思議な力でかき消されてしまった……","color":"yellow","bold":true}
