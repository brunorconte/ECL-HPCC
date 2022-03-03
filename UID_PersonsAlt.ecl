IMPORT $, Std;

Layout_Persons_UID := RECORD
    UNSIGNED4 UID := 0;
    $.File_Persons.File;
END;

PersonsTb1 := TABLE($.File_Persons.File, Layout_Persons_UID);

Layout_Persons_UID IDRecs(Layout_Persons_UID L,
                            Layout_Persons_UID R) := TRANSFORM
    SELF.UID := IF(L.UID=0, std.system.Thorlib.node()+1, L.UID+CLUSTERSIZE);
END;

EXPORT UID_PersonsAlt := ITERATE(PersonsTb1, IDRecs(LEFT,RIGHT), LOCAL)
                        :PERSIST('~ONLINE::BRC::PERSIST::UID_PersonsAlt');