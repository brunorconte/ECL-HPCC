IMPORT $;

IsFloridian := $.Persons.State='FL';

IsMale := $.Persons.Gender='M';

IsBorn80 := $.Persons.Birthdate[..4]>='1980' AND $.Persons.Birthdate <> '';

EXPORT IsYoungFloridaMale := IsFloridian AND IsMale AND IsBorn80;