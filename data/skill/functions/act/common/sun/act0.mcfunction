
### サン

execute if data storage area: capture.skylands{011:1b} run time set noon

function makeup:skill/act/common/sun/act0
execute unless data storage area: capture.skylands{011:1b} run tellraw @a {"translate":"不思議な力でかき消されてしまった……","color":"yellow","bold":true}
