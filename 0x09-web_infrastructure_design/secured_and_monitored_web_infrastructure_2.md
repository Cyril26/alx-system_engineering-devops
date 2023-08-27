# Web Infrastructure Design

## 2. Secured and Monitored Web Infrastructure

### Issues with this Infrastructure

- **Terminating SSL at the Load Balancer Level**  
  Terminating SSL at the load balancer level poses a security concern. Traffic between the load balancer and the server remains unencrypted, making it susceptible to data theft, session hijacking, and man-in-the-middle (MitM) attacks.

- **Single MySQL Server for Writes**  
  Relying on only one MySQL server capable of accepting writes creates an issue because in case of master failure, some committed transactions on the master might not be available on the slave.

- **Uniform Server Components**  
  Having servers with identical components for database, web server, and application server can lead to problems shared server resources, including disk usage, memory, and CPU, between your web site and database can result in slower performance for both, compared to having dedicated resources.
