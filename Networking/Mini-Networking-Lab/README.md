Mini Networking Lab – Apache + DNS in WSL2

Objective:

Demonstrate a basic networking setup with a web server (Apache) and local DNS resolution using WSL2. Includes troubleshooting scenarios for service and DNS issues.

Environment:
- Windows 11 with WSL2 (Ubuntu 24.04)
- Apache2 web server
- Linux tools: curl, ping, dig, nslookup
- Windows browser (Chrome/Edge) for external access

Step 1: Set up Apache Web Server
1.Install Apache:
sudo apt update
sudo apt install apache2 -y
2.Start and enable Apache:
sudo systemctl start apache2
sudo systemctl enable apache2
3.Verify Apache is running:
sudo systemctl status apache2


Step 2: Set up local DNS resolution
Inside WSL2
1.Edit /etc/hosts to map office.local to local IP:
sudo nano /etc/hosts
Add line:
127.0.0.1   office.local
2.Test name resolution:
ping -c 4 office.local
Ping Test
Ping Test
curl http://office.local
Curl Test
Curl Test
In Windows Browser
- Open Windows browser and navigate to either:
http://172.17.202.186
or, if you added to Windows hosts:
http://office.local
Browser Test


Step 3: Testing Connectivity
- Test network connectivity:
ping -c 4 office.local
- Test HTTP service:
curl http://office.local
- Expected results:
- Ping replies: network OK

- Curl returns Apache HTML:  web service OK

Step 4: Troubleshooting Scenarios
Scenario 1: Apache service down
1. Stop Apache:
sudo systemctl stop apache2
2. Test curl → fails
3. Ping → still works
4. Start Apache:
sudo systemctl start apache2
- Service restored
Scenario 2: Wrong DNS entry
1. Temporarily edit /etc/hosts:
127.0.0.1 office.fake
2. Curl/ping fails → name resolution issue
3. Restore /etc/hosts:
127.0.0.1 office.local
-  Name resolution restored

Step 5: Observations
- WSL2 acts as a mini Linux environment inside Windows

- Apache and DNS can be fully tested inside WSL2

- Windows browser can access the web server using WSL2 IP or Windows hosts entry

- Troubleshooting demonstrates ability to identify service vs network vs DNS issues





