using CatalogService as service from '../../srv/CatalogService';

annotate service.POs with @(
    UI.SelectionFields:[
        PO_ID,
        PARTNER_GUID.COMPANY_NAME,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY,
        GROSS_AMOUNT
    ],
    UI.LineItem:[
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
            Value: OverallStatus,
            Criticality: ColorCoding,
        },
                {
            $Type: 'UI.DataField',
            Value: GROSS_AMOUNT,
        },

    ]

);
