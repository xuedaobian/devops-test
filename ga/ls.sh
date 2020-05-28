cd ./functions
for dir in $(ls ./)
do
    if [ -d $dir ] 
    then
        echo $dir
        eval 'git log --pretty=format:“%h” -1 $dir'
        # eval 'git $dir rev-parse --short HEAD'
        # cd ..
        # eval 'tcb functions:code:update $dir'
        # cd ./functions
    fi
done