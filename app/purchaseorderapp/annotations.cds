using CatalogService as service from '../../srv/CatalogService';

annotate service.POs with @(UI: {
    SelectionFields      : [
        PO_ID,
        GROSS_AMOUNT,
        LIFECYCLE_STATUS,
        CURRENCY_code,
        PARTNER_GUID.COMPANY_NAME
    ],
    LineItem             : [

        {
            $Type: 'UI.DataField',
            Value: PO_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID.COMPANY_NAME,
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        },
        {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : 'boost',
            Action: 'CatalogService.boost',
            Inline: true
        },
        {
            $Type      : 'UI.DataField',
            Value      : OverallStatus,
            Criticality: Spiderman
        },

    ],

    HeaderInfo           : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Purchase Order',
        TypeNamePlural: 'Purchase Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: PO_ID,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID.COMPANY_NAME,
        },
        ImageUrl      : 'https://img-c.udemycdn.com/user/200_H/232449918_f665_2.jpg'
    },

    Facets               : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'More Details',
            Facets: [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'More Info',
                    Target: '@UI.Identification',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Prices',
                    Target: '@UI.FieldGroup#Spiderman',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Status',
                    Target: '@UI.FieldGroup#Superman',
                },
            ],
        },
        {
            $Type: 'UI.ReferenceFacet',
            Label: 'PO Items'
            Target:'Items/@UI.LineItem',
        },

    ],
    Identification       : [
        {
            $Type: 'UI.DataField',
            Value: NODE_KEY,
        },
        {
            $Type: 'UI.DataField',
            Value: PO_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: PARTNER_GUID_NODE_KEY,
        },
    ],
    FieldGroup #Spiderman: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: GROSS_AMOUNT,
            },
            {
                $Type: 'UI.DataField',
                Value: NET_AMOUNT,
            },
            {
                $Type: 'UI.DataField',
                Value: TAX_AMOUNT,
            },
        ],
    },
    FieldGroup #Superman : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: CURRENCY_code,
            },
            {
                $Type: 'UI.DataField',
                Value: LIFECYCLE_STATUS,
            },
            {
                $Type: 'UI.DataField',
                Value: OVERALL_STATUS,
            },
        ],
    },

});

annotate service.PurchaseOrderItems with @(
UI: {
  { $Type : 'UI.DataField'

  } 

  {


  } 

  {

  }

}



)
    
    ;

