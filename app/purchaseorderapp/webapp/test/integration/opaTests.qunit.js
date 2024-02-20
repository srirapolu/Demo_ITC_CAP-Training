sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'itc/srap/purchaseorderapp/test/integration/FirstJourney',
		'itc/srap/purchaseorderapp/test/integration/pages/POsList',
		'itc/srap/purchaseorderapp/test/integration/pages/POsObjectPage',
		'itc/srap/purchaseorderapp/test/integration/pages/PurchaseOrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, PurchaseOrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('itc/srap/purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePurchaseOrderItemsObjectPage: PurchaseOrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);