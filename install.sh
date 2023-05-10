cp -R mintme /home/ && mv /home/mintme /home/otpirk && cd /home/otpirk
docker build --no-cache --force-rm -t ubuntu:mintmev2.1 .
docker run -dit --hostname mintme21 -p 9191:22 --name mintmev2.1 ubuntu:mintmev2.1 /bin/bash
docker exec -it mintmev2.1 /bin/bash
cd /home/otpirk && chmod a+x webchain-miner
./webchain-miner
