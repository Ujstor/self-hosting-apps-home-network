# Self-Hosting Apps on a Home Network

If you have reasons for not purchasing and using a Virtual Private Server (VPS), such as [Hetzner](https://hetzner.cloud/?ref=Ix9xCKNxJriM) (€⁠20 in cloud credits us if link is used), which is both affordable and reliable at just $5 a month and can be set up with a free Continuous Deployment pipeline like [Coolify](https://coolify.io/docs/), then this repository is ideal for self-hosting on your local machine It focuses on running various applications within Docker containers, managing them through an [Nginx reverse proxy](https://nginxproxymanager.com/guide/#hosting-your-home-network), and securing connections with SSL.

### Applications Hosted:
1. **Static Website:** A Go-based web application.
2. **Notes App:** A Flask application with SQLite.
3. **Go App with PostgreSQL:** A Go application utilizing a PostgreSQL database.

### Prerequisites:
- Basic understanding of Docker, Nginx, and network configurations.
- A PC with Docker installed, ready to host applications.
- Access to your home network router for port configurations.

## Initial Setup Steps
1. **Buy a DNS Domain:**
   - Purchase a domain name from a registrar (e.g., GoDaddy, Namecheap).
   - Configure DNS settings to point to your home network IP.

2. **Configure Router:**
   - Open ports 80 and 443 to allow web traffic.
   - Locate the Port Forwarding section in your router settings and add entries for these ports.

3. **Docker Setup:**
   - Ensure Docker and Docker Compose are installed on your PC.
   - Use the provided `docker-compose.yml` to set up your environment.


## Nginx Proxy Manager
Nginx Proxy Manager acts as the gateway to your applications. Use it to create forwarding domains, redirections, and manage SSL.

### Initial Access:
- Access the Nginx dashboard on port 81.
- Default login credentials are provided in the nginx documentation snippet.
- After the first login, change your admin details and password.

### SSL Configuration:
- Utilize Let's Encrypt for free SSL or provide your custom SSL certificates.
- SSL is automatically handled for your domains configured in Nginx.

## Running the Applications
1. **Initial Run:**
   - On the first run, GPG keys are generated, and the database initializes.
   - A default admin user is created for Nginx Proxy Manager.
   - This process may take a few minutes.

2. **Starting the Services:**
   - Run `docker-compose up` to start all services.
   - Ensure each service is correctly configured and running.

3. **Configuring Services:**
   - Use the Nginx dashboard to point your domain to the respective Docker containers.
   - Ensure proper network connectivity between Docker services.


4. **Security and Maintenance:**
   - Regularly update your Docker images and Nginx configurations.
   - Monitor your network for any unusual activity.

## Conclusion
This setup allows you to host various applications securely and efficiently from your home network. Always ensure your configurations are secure and up-to-date. For detailed configurations and troubleshooting, refer to application documentation.

 ![docker](https://i.imgur.com/mWcuSkO.png)

 ![nginx](https://i.imgur.com/CCvnfTW.png)

