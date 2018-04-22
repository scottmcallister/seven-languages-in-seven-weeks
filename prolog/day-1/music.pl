player(jimi_hendrix, guitar).
player(adam_jones, guitar).
player(justin_chancellor, bass).
player(danny_carey, drums).
player(maynard, vocals).
player(getty_lee, bass).
player(alex_liefson, guitar).
player(neil_peart, drums).
player(james_hetfield, vocals).
player(kirk_hammett, guitar).
player(lars_ulrich, drums).
player(cliff_burton, bass).
player(tom_araya, vocals).
player(kerry_king, guitar).
player(dave_lombardo, drums).
player(jeff_hanneman, guitar).

band_member(jimi_hendrix, jimi_hendrix).
band_member(adam_jones, tool).
band_member(justin_chancellor, tool).
band_member(danny_carey, tool).
band_member(maynard, tool).
band_member(getty_lee, rush).
band_member(alex_liefson, rush).
band_member(neil_peart, rush).
band_member(james_hetfield, metallica).
band_member(kirk_hammett, metallica).
band_member(lars_ulrich, metallica).
band_member(cliff_burton, metallica).
band_member(tom_araya, slayer).
band_member(kerry_king, slayer).
band_member(dave_lombardo, slayer).
band_member(jeff_hanneman, slayer).

band(jimi_hendrix, rock).
band(tool, rock).
band(rush, rock).
band(metallica, metal).
band(slayer, metal).

guitar_players :-
    player(Name, guitar),
    write(Name).

metal_bands :-
    band(Name, metal),
    write(Name).

rock_drummers :-
    player(Name, drums),
    band(Band, rock),
    band_member(Name, Band),
    write(Name).
