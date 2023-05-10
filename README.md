# Mining Mint-me Coin using Ubuntu Docker [ PC/Server-Version ]
How to activate Mint-me Miner from Ubuntu using Docker.
- Prepare Mint-me Wallet first
- Prepare your CPU Thread
- Prepare other settings.

Do the steps above on this [https://github.com/otpirk/mintme/blob/main/config.json]

Here are the steps that need to be followed to get this, through these commands.

Step-1
~$ git clone https://github.com/otpirk/mintme.git

Step-2
~$ mv /home/mintme /home/otpirk && cd /home/otpirk

Step-3
~$ docker build --no-cache --force-rm -t ubuntu:mintmev2.1 .

Step-4
~$ docker run -dit --hostname mintme21 -p 9191:22 --name mintmev2.1 ubuntu:mintmev2.1 /bin/bash

Step-5
~$ docker exec -it mintmev2.1 /bin/bash

Step-6
~$ ./webchain-miner


Step above following adjust to your configuration.
