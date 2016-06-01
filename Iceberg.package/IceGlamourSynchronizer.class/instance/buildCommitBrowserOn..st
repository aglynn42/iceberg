building
buildCommitBrowserOn: parent
	| browser |
	browser := parent tabulator 
		title: 'Commit your changes';
		row: [ :r | r column: #changes; column: #commit ];
		row: #diff;
		yourself.
		
	browser transmit 
		transformed: #workingCopyChanges;
		to: #changes; 
		andShow: [ :a |
			a fastTree title: 'Local changes';
				children: #elements;
				icon: #icon;
				format: #description ]
		