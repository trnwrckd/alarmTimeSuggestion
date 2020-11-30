predicates
	go
	calc(integer,integer, string)
	amcheck(integer, integer ,char)
	result(integer, integer, string)
	switch(integer, integer, string)
clauses
	go:-
	clearwindow(),
	write("When are you"),nl,
	write("going to bed?"),nl,
	write("---------------"),nl,
	write("Enter hour: "), readint(H),
	write("Enter Minutes: "), readint(M),
	write("AM? (y/n)"),nl,readchar(AM),
	amcheck(H,M,AM).
	
	amcheck(H,M, AM):-
		AM = 'y',
		write(H,":",M," ","AM"),nl,
		calc(H,M,"AM").
	
	amcheck(H,M,AM):- 
		AM ='n',
		write(H,":", M, " ", "PM"),nl,
		calc(H,M,"PM").
	
	switch(H,M,AM):-
		AM ="AM",
		ThisAM = "PM",
		write(H,":",M," ",ThisAM),nl.
		
	switch(H,M,AM):-
		AM = "PM",
		ThisAm = "AM",
		write(H,":",M," ",ThisAm),nl.
	
	result(H,M,AM):-
         	H>12,
         	ThisH = H mod 12,
            	switch(ThisH,M,AM).
        	
        result(H,M,AM):-
        	H<=12,
        	write(H,":",M," ",AM),nl.
	
	calc(H,M,AM):-
		write("You should consider"),nl,
		write("setting your alarm at"),nl,
		write("-------"),nl,
		M1 = (M+105) mod 60,
		H1 =(H+ ((M+105) div 60)),
		result(H1,M1,AM),
				
		M2 =(M1+90) mod 60,
		H2 = (H1+((M1+90) div 60)),
		result(H2,M2,AM),
		
		M3 = (M2 + 90) mod 60,
		H3 = (H2 + ((M2+90) div 60)),
		result(H3,M3,AM),
		
		M4 = (M3 + 90) mod 60,
		H4 = (H3 + ((M3+90) div 60)),
		result(H4,M4,AM),
		
		M5 = (M4 + 90) mod 60,
		H5 = (H4 + ((M4 + 90) div 60)),
		result(H5,M5,AM),
		
		M6 = (M5 + 90) mod 60,
		H6 = (H5 + ((M5 +90) div 60)),
		result (H6, M6, AM).