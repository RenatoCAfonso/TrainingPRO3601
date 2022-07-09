IMPORT $;

Crimes:= $.File_crimes_bestrecord.File;

rec := RECORD
	STRING4 Crimes_year;
	INTEGER Qtd;
END;

// Declaracao DATASET
ds := DATASET([{'2010',COUNT(Crimes(year=2010))},
               {'2011',COUNT(Crimes(year=2011))},
							 {'2012',COUNT(Crimes(year=2012))},
               {'2013',COUNT(Crimes(year=2013))},
               {'2014',COUNT(Crimes(year=2014))},
               {'2015',COUNT(Crimes(year=2015))},
               {'2016',COUNT(Crimes(year=2016))},
               {'2017',COUNT(Crimes(year=2017))},
               {'2018',COUNT(Crimes(year=2018))},
               {'2019',COUNT(Crimes(year=2019))},
               {'2020',COUNT(Crimes(year=2020))}],rec);
OUTPUT(ds);


Average:=AVE(ds,ds.qtd);
					 
OUTPUT(Average);