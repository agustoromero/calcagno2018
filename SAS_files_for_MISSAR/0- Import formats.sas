/************************************************************RUN EVERY SESSION*******************************************************/
/*Run this code every time you work with the EPHc survey on the 2003-2015 period. */
/*For this code to work, you need to have already imported the starting dataset and formatted it (the EPHc survey, 2003-2015)*/

	/*To solve the formatting errors, for every imported year we copied the formats file generated by the proc import procedure,
			labelled it accordingly and put it in a formats folder. We also created a formats_all file with all the formatting 
			present in datasets between 2003 and 2015. 
		Then, we carry out some short print procedures (proc print) with a fmtsearch instruction to tell SAS to fetch the
				corresponding format for each base. This lets us not only verifiy there are no format problems, but also 
				the formats will be loaded for the rest of the sessions. */

/*If there is a format error nevertheless, SAS may refuse to carry out a data step. In that case, add this line before the data instruction 
		options nofmterror; */

/*We always use in our code the leo library. Of course, feel free to create your own library.*/
libname leo "h:\Leonardo_orl�ans\EPH_base\lib";

libname formats "h:\Leonardo_orl�ans\EPH_base\formats";
/*There is a problem with the formats of 2015, so we have to use those of the other waves. */
options fmtsearch=(formats.formats_all);
proc print data=leo.eph_2015_t02(obs=10); 
run;
options fmtsearch=(formats.formats_2014);
proc print data=leo.eph_2014_t02(obs=10); 
run;
options fmtsearch=(formats.formats_2013);
proc print data=leo.eph_2013_t02(obs=10); 
run;/*
options fmtsearch=(format.formats_2012);
proc print data=leo.eph_2012(obs=10); 
run;*/

options fmtsearch=(format.formats_2012);
proc print data=leo.eph_2012_t02(obs=10); 
run;
 /*
options fmtsearch=(format.formats_2011);
proc print data=leo.eph_2011(obs=10); 
run; 
*/

options fmtsearch=(format.formats_2011);
proc print data=leo.eph_2011_t02(obs=10); 
run;/*
options fmtsearch=(format.formats_2010);
proc print data=leo.eph_2010(obs=10); 
run;*/


options fmtsearch=(format.formats_2010);
proc print data=leo.eph_2010_t02(obs=10); 
run;
options fmtsearch=(format.formats_2009);
proc print data=leo.eph_2009_t02(obs=10); 
run; 

options fmtsearch=(format.formats_2008);
proc print data=leo.eph_2008_t02(obs=10); 
run; 

options fmtsearch=(format.formats_2007);
proc print data=leo.eph_2007_t02(obs=10); 
run; 

options fmtsearch=(format.formats_2006);
proc print data=leo.eph_2006_t02(obs=10); 
run;

options fmtsearch=(format.formats_2005);
proc print data=leo.eph_2005_t02(obs=10); 
run; 
options fmtsearch=(format.formats_2004);
proc print data=leo.eph_2004_t02(obs=10); 
run; 
/*There is a problem with the formats of the 2003 waves, so we have to use those of all the other datasets*/
options fmtsearch=(format.formats_all);
options nofmterr;
proc print data=leo.eph_2003_t03(obs=10); 
run; 
/*If you want to erase the output, just uncomment the code below*/
/*
dm 'odsresults; clear'; 
dm 'clear log'; */

