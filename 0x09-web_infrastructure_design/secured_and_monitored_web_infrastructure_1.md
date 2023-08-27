# Web Infrastructure Design

## 2. Secured and Monitored Web Infrastructure

### Specifics About This Infrastructure

- **Purpose of Firewalls**  
  Firewalls are designed to monitor and filter incoming and outgoing network traffic based on pre-established security policies of an organization.

- **Significance of Traffic Served Over HTTPS**  
  HTTPS is an enhanced and secure version of the HTTP protocol. It incorporates SSL, a component of HTTPS that encrypts data.
  SSL certificate - This certificate validates a website's identity and establishes a secure channel for communication between the website and the client.

- **Role of Monitoring**  
  Monitoring involves tracking the health, metrics, and performance of web servers to ensure optimal functionality.

- **Data Collection by Monitoring Tools**  
  Monitoring tools collect data in various ways:

  - Web servers are monitored for user load, security, and speed.
  - Application servers are monitored for server availability and responsiveness.
  - Storage servers are monitored for availability, capacity, delay, and data loss.

- To monitor your web server's QPS (Queries Per Second), you'll need to set up a monitoring system that tracks and reports the number of queries being made to your server within a specific time frame.
  - Choose a monitoring tool
  - Integrate your web server with the monitoring tool by installing monitoring agents or exporters.
  - Set up metrics that track the number of queries your web server receives.
  - Set the time intervals for data collection, typically measuring over short intervals, such as every minute or second, to capture real-time fluctuations.
  - Access the monitoring tool's dashboard to view QPS metrics.
  - Set up alerts to trigger when QPS exceeds or falls below predefined thresholds.
