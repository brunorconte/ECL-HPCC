IMPORT $;

IsOlderPerson := $.Persons.Birthdate[..4] < '1980' AND $.Persons.Birthdate <> '';

c1 := COUNT($.MeninMStatesPersons(IsOlderPerson));
c2 := COUNT($.Persons(Gender = 'M', IsOlderPerson));
PercOlderMalesInMStates := (DECIMAL5_2)(c1/c2 * 100);

OlderFemaleInMStates := COUNT($.Persons(State IN $.SetMStates, IsOlderPerson, Gender='F'));
AllOlderFemale := COUNT($.Persons(Gender= 'F', IsOlderPerson));
PercOlderFemalesInMStates := (DECIMAL5_2)(OlderFemaleInMStates/AllOlderFemale * 100);

OUTPUT(PercOlderMalesInMStates,named('Men_Percentage'));
OUTPUT(PercOlderFemalesInMStates,named('Female_Percentage'));

