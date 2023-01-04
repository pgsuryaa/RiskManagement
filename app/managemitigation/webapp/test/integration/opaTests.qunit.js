sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managemitigation/test/integration/FirstJourney',
		'managemitigation/test/integration/pages/MitigationsList',
		'managemitigation/test/integration/pages/MitigationsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MitigationsList, MitigationsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managemitigation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMitigationsList: MitigationsList,
					onTheMitigationsObjectPage: MitigationsObjectPage
                }
            },
            opaJourney.run
        );
    }
);