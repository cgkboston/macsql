#!/bin/tcsh
set noglob
cat history.dat | awk '{print $2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20}'\
sed -e 's/                   //g'|sed -e 's/                  //g'|sed -e 's/                 //g'|\
sed -e 's/                //g'|sed -e 's/               //g'|sed -e 's/              //g'|\
sed -e 's/             //g'|sed -e 's/            //g'|sed -e 's/           //g'|sed -e 's/          //g'|\
sed -e 's/         //g'|sed -e 's/        //g'|sed -e 's/       //g'|sed -e 's/      //g'|sed -e 's/     //g'|\
sed -e 's/    //g'|sed -e 's/   //g'|sed -e 's/  //g'| sed -e 's/ /_20_/g' > history.tmp
cat history.tmp | sort | uniq > history.sort
mv history.sort history.tmp
set counter = 0
rm history.dat
foreach line (`cat history.tmp`)
    @ counter++
#    echo line is $line
    set line = `echo $line | sed -e 's/_20_/ /g'`
    echo $counter'	'$line >> history.dat
end
rm history.tmp
