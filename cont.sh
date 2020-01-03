cont=$1

echo "creating $cont containers"
sleep 2;

for i in `seq $cont`
do
	echo "creating www.cont$i containers"
	sudo docker run -it --name www.cont$i nageshvkn/node3 /bin/bash
	echo "www.cont$i containers has been created"
done
