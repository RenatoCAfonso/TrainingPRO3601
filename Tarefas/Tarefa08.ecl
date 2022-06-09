IMPORT $;

$.File_Crime_Slim.Layout Slimdown($.STD_Crimes.Layout L,
																		$.File_LookupCSZ.Layout R) := TRANSFORM
		SELF := R;
		SELF := L;
END;

SlimRecs := JOIN($.STD_Crimes.File,$.File_LookupCSZ.File,
									LEFT.id=RIGHT.id,
									Slimdown(LEFT,RIGHT),LEFT OUTER, LOOKUP);

OUTPUT(SlimRecs,,'~CLASS::HMW::OUT::Crime_Slim',overwrite);