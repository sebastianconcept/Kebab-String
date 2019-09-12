baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				className: 'ConfigurationOfDiacritics';
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main'.
			spec
				package: 'Kebab-String'
				with: [ spec repository: 'github://sebastianconcept/Kebab-String' ] ]