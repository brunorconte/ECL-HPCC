IMPORT $;

COUNT($.Persons(State='FL'));
COUNT($.Persons(State='FL',City='MIAMI'));
COUNT($.Persons(ZipCode='33102'));
COUNT($.Persons(Firstname[1]='B'));
COUNT($.Persons(Filedate >= '20010000'))

