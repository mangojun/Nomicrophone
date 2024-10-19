# 넣은 UI 복구
$data modify storage nomic:global data[$(id)].inputs set from entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] Items
$data remove storage nomic:global data[$(id)].inputs[{components: {"minecraft:custom_data": {nomic.button: {}}}}]
$execute if data storage nomic:global data[$(id)].inputs[0] run function nomic:minecart/return with storage nomic:global data[$(id)]

# 동작
$item replace entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] container.0 from entity @n[scores={nomic.data=$(id)}] player.cursor
$function nomic:minecart/click with entity @n[tag=nomic.ui_$(id), type=minecraft:chest_minecart] Items[{Slot: 0b}].components."minecraft:custom_data"."nomic.button"

# 꺼내 온 UI 제거
$clear @a[scores={nomic.data=$(id)}] *[minecraft:custom_data~{nomic.button: {}}]