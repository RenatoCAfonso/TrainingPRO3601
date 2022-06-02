﻿IMPORT $, Std, DataPatterns;

//Persons := $.Tarefas.File_crime_raw.File;
Persons := $.File_Accounts.File;

// Accounts := $.File_Accounts.File;

// profileResults := STD.DataPatterns.Profile(Persons);
// profileResults := STD.DataPatterns.Profile(Persons, 'zipcode');
bestrecord := Std.DataPatterns.BestRecordStructure(Persons);
// benford_bad		 := STD.DataPatterns.Benford(Persons, 'zipcode');
// benford_good   := STD.DataPatterns.Benford(Accounts, 'balance');
 
//OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
// OUTPUT(benford_bad, ALL, NAMED('Benford_bad'));
// OUTPUT(benford_good, ALL, NAMED('Benford_good'));


