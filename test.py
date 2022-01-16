from aoe2scenario_py.aoe2scenario import Aoe2scenario

scenario = Aoe2scenario.from_file("data/0_E3_Scenario.aoe2scenario")
print(scenario)
print(scenario.author)
print(scenario.data.player_names)
#with open('data/0_E3_Scenario.inner', 'wb') as fout:
#    fout.write(scenario.data)
print(scenario.data.mission_items_counter)

print(scenario.data.original_filename.len)

for idx, player_data1 in enumerate(scenario.data.player_data1):
    #if player_data1.active:
    print(f'Active: {player_data1.active}, Human: {player_data1.human}, Civ: {player_data1.civilization:2d}, CTY: {player_data1.cty_mode}, Name: {scenario.data.player_names[idx]}')

