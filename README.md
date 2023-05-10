# Mining Mint-me Coin using Ubuntu Docker [ PC/Server-Version ]
How to activate Mint-me Miner from Ubuntu using Docker.
- Prepare Mint-me Wallet first
   <br/> <b style="font-color:#FFFFF">"user": "0x15482e6553bc529b632a74540597cecb1be2279f", </b>  // username for mining server
- Prepare your CPU Thread
    <br/> "cpu-priority": 2,   // set process priority (0 idle, 2 normal to 5 highest)
   <br/>  "donate-level": 1,   // donate level, mininum 1%
- option settings.

Do the steps above on this [https://github.com/otpirk/mintme/blob/main/config.json]

A. Simple Step<br/>
1. Execute Installation Command and direct Miner running automated on Container <br/>
   screen -S mintme -dm /bin/sh -c 'sh mintme/install.sh; exec /bin/sh'
2. Show/Use Terminal Miner running on Process<br/>
   screen -r mintme
3. Switching Back From Terminal Container to Main Terminal Host<br/>
   Ctrl+AD

B. Step By Step<br/>
Here are the main steps that need to be followed to get this, through these commands.

Step-1<br/>
~$ git clone https://github.com/otpirk/mintme.git

Step-2<br/>
~$ cp -R mintme /home/ && mv /home/mintme /home/otpirk && cd /home/otpirk

Step-3<br/>
~$ docker build --no-cache --force-rm -t ubuntu:mintmev2.1 .

Step-4<br/>
~$ docker run -dit --hostname mintme21 -p 9191:22 --name mintmev2.1 ubuntu:mintmev2.1 /bin/bash

Step-5<br/>
~$ docker exec -it mintmev2.1 /bin/bash

Step-6<br/>
~$ cd /home/otpirk && chmod a+x webchain-miner

Step-7<br/>
~$ ./webchain-miner
<br/>

Step above following adjust to your configuration.
