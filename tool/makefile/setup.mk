.PHONY: define_gen

# tool/define_gen.dart
define_gen:
	@dart tool/define_gen.dart define.json lib/generated/define.g.dart
