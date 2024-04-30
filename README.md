### Lava Farming

###### Sometime ago I discovered Lava and their points program:

Lava, the Modular Access layer for different blockchain projects just released an incentivzed points program. This program basically rewards with points to users that interact with their daily basis blockchains such as Ethereum, Axelar, Near... etc but instead of using your default wallet's RPC endpoints you will use the ones that Lava gives you.

Basically you will put Lava blockchains as an intermediate to interact with your blockchains. I know it sounds kind of weird but todays crypto is basically using the web2 infrastructure that has been alive for some years.

I created two scripts to automate the Near and Ethereum ones and get as much points as possible.

**Important note: I only could user the Near one for a couple of weeks. It seems that now Lava is using CloudFlare and all the CLI's requests pointing to the lava domain are being rejected. I thought this was only with my script but some other friends noticed the same behaviour with my script.**

**How Near Script Works:**

- You have to create a Near wallet here: https://www.mynearwallet.com/ (Store securely your seed phrase and your account ID).
- The script has been tested only in Linux and Mac.
- You need **npm** installed. This is a bash script that verifies if Near CLI package is already installed and will install it if it is not.
- By default it has hardcoded my Near RPC endpoint. So if you don't want to give me your points 😀 you will have to change it.
- When you execute your script it will ask you for your Account ID and your Seed Phrase.
- The commented code is there because I was trying to configure some random requests that not just call the RPC to know the wallet balance but also make a tx to other Near Wallet. I disabled that feature because I thought maybe I was banned because of that.

**How ETH Script Works:**
- This script is written in Python. You might have to pre-install some web3 library. It will be different depending on the environment you run.
- Here, you don't have to login or to set account ID or something similar. You will only have to execute and paste your ETH address.
- The script will make a request to the RPC set by you. Don't forget to overwrite my url.


**Last notes**
These scripts were usefull almost one month ago, now they are not, but my intention here is to share with you the way you can ayutomate somethings in crypto world that basically are essential on the Web2 nowadays. I got to make some important ammount of points here and it was really funny to make this. Use it as you please. 
