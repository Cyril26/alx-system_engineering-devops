# Web Infrastructure Design

## 0. Simple Web Stack

### Issues with this Infrastructure

- **Single Point of Failure (SPOF)**  
  The failure of a single server can lead to the entire network collapsing.

- **Downtime During Maintenance**  
  The system experiences downtime when necessary maintenance is performed. This includes scenarios like restarting the web server after deploying new code.

- **Limited Scalability for High Traffic**  
  The infrastructure lacks scalability for handling high incoming traffic. It becomes challenging to effectively scale the site for increased loads.
