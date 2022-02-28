IMPORT $;

SortPersons := SORT($.Persons, LastName, FirstName, RecID);

EXPORT DedupPersons := DEDUP(SORTPERSONS,
                        LEFT.LastName = RIGHT.LastName AND
                        LEFT.FirstName = RIGHT.FirstName)
            :PERSIST('~CLASS::BRC::TEMP::DedupPersons');

