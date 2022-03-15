
all: python ruby

python: aoe2scenario_py/aoe2scenario.py
ruby: aoe2scenario_rb/aoe2scenario.rb

test: aoe2scenario_py/aoe2scenario.py
	python3 test.py

visualise:
	ksv data/0_E3_Scenario.aoe2scenario aoe2scenario.ksy

aoe2scenario_py/aoe2scenario.py: aoe2scenario.ksy
	ksc -t python --outdir aoe2scenario_py aoe2scenario.ksy

aoe2scenario_rb/aoe2scenario.rb: aoe2scenario.ksy
	ksc -t ruby --outdir aoe2scenario_rb aoe2scenario.ksy


.PHONY: all test visualise python
