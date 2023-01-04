using RiskService as service from '../../srv/risk-service';

annotate service.Mitigations with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'timeline',
            Value : timeline,
        },
    ]
);
annotate service.Mitigations with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'timeline',
                Value : timeline,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
