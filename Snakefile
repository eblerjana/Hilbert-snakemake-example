
rule all:
	input:
		"results/test.txt"


rule some_example_rule:
	output:
		"results/test.txt"
	resources:
		# specify here the resources of the rule
		# if no resources are specified here, the default values (profile/config.yaml)
		# will be used
		runtime_hrs=0,
		runtime_min=2,
		mem_total_mb=100
	shell:
		"""
		echo "This is a test" > {output}
		"""
