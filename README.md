# Mining Mint-me Coin using Ubuntu Docker [ PC/Server-Version ]
How to activate Mint-me Miner from Ubuntu using Docker.
- Prepare Mint-me Wallet first
   <br/> <b>"user": "0x15482e6553bc529b632a74540597cecb1be2279f", </b>  // username for mining server
- Prepare your CPU Thread
    <br/> <b>"cpu-priority": 2, </b>  // set process priority (0 idle, 2 normal to 5 highest)
   <br/>  <b>"donate-level": 1, </b>  // donate level, mininum 1%
- option settings.

Do the steps above on this [https://github.com/otpirk/mintme/blob/main/config.json]

A. Simple Step<br/>
1. Coppying all file in 1 directory to Host  <br/>
   <b>git clone https://github.com/otpirk/mintme.git</b>
2. Execute Installation Command and direct Miner running automated on Container <br/>
   <b>screen -S mintme -dm /bin/sh -c 'sh mintme/install.sh; exec /bin/sh'</b>
3. Show/Use Terminal Miner running on Process<br/>
   <b>screen -r mintme</b>
4. Switching Back From Terminal Container to Main Terminal Host<br/>
   <b>Ctrl+AD</b>

B. Step By Step<br/>
Here are the main steps that need to be followed to get this, through these commands.

Step-1<br/>
~$ <b>git clone https://github.com/otpirk/mintme.git</b>

Step-2<br/>
~$ <b>cp -R mintme /home/ && mv /home/mintme /home/otpirk && cd /home/otpirk</b>

Step-3<br/>
~$ <b>docker build --no-cache --force-rm -t ubuntu:mintmev2.1 .</b>

Step-4<br/>
~$<b> docker run -dit --hostname mintme21 -p 9191:22 --name mintmev2.1 ubuntu:mintmev2.1 /bin/bash</b>

Step-5<br/>
~$ <b>docker exec -it mintmev2.1 /bin/bash</b>

Step-6<br/>
~$ <b>cd /home/otpirk && chmod a+x webchain-miner</b>

Step-7<br/>
~$ <b>./webchain-miner</b>
<br/>

Step above following adjust to your configuration.
