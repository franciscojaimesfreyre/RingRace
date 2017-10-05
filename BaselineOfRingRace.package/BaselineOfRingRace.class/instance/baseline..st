baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'RingRace-Model';
				package: 'RingRace-Tests' with: [ spec requires: 'RingRace-Model' ].
				spec group: 'Deployment' with: #('RingRace-Model');
				group: 'Development' with: #('RingRace-Tests');
				group: 'Default' with: #('Development')  
				 ]