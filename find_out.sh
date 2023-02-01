let exec=0
let no_exec=0
let dir=0
for i in `ls $1`
    do
    if [ -d $1/$i ]
    then echo $i is exec; let dir++; echo $i >> directories.txt
    elif [ -x $1/$i ]
    then echo $i is dir; let exec++; echo $i >> executables.txt 
    else
    let no_exec++
    fi
done
echo $exec fichiers sont exécutables, $dir sont des dossiers

    
