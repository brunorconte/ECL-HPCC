IMPORT $;
// EXPORT 
EXPORT fn_Aggregates(DATASET(RECORDOF($.Persons)) DS, INTEGER FieldName) := FUNCTION
    c1 := COUNT(DS(FieldName=0));
    s1 := SUM(DS,FieldName);
    a1 := AVE(DS,FieldName);
    m1 := MAX(DS,FieldName);
    m2 := MIN(DS, FieldName);

    d := DATASET([{'No Dependents', c1},
                    {'Total Dependents', s1},
                    {'Average Dependents', a1},
                    {'Max Dependents', m1},
                    {'Min Depenendents', m2}],
                    {STRING20 valuetype, INTEGER val});
    RETURN(d);
END;

