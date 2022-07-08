IMPORT $,STD;

Crimes := $.File_crimes.File;

bestrecord := STD.DataPatterns.BestRecordStructure(Crimes);


OUTPUT(bestrecord, ALL, NAMED('BestRecord'));