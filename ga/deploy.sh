cd ./functions
echo '开始执行ls.sh文件'
newlog=`eval "git rev-parse --short HEAD"`
for dir in $(ls ./)
do
    if [ -d $dir ] 
    then
        oldlog=`eval "git log --pretty=format:“%h” -1 $dir"`
        if [ $newlog = ${oldlog:1:7} ]
        then
            cd ..
            echo "$dir 函数开始部署"
            # eval 'tcb functions:code:update $dir'
            eval 'tcb functions:deploy $dir --force' && echo "$dir 函数部署成功"
            cd ./functions
        fi
    fi
done
