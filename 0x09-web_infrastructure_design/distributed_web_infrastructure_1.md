# Design of Distributed Web Infrastructure

## 1. Architecture for Scalable Web Infrastructure

### Overview of the Infrastructure

- **Algorithm and Functionality of Load Balancer**  
  The HAProxy load balancer is configured with a Round Robin distribution algorithm. This algorithm directs incoming client requests to each server in sequential order. Once the end of the list is reached, the load balancer starts again from the top, creating a loop.

- **Functionality Facilitated by the Load Balancer**  
  The HAProxy load balancer establishes an Active-Passive configuration rather than an Active-Active configuration. This involves a minimum of two nodes, where not all nodes are concurrently active. The passive server functions as a standby backup, ready to assume control if the active server becomes disconnected or unable to operate. This differs from the Active-Active setup where multiple nodes are simultaneously providing the same service.

- **Working Principles of Primary-Replica (Master-Slave) Database Cluster**  
  A Primary-Replica setup designates one server as the Primary (Master) and another as the Replica (Slave). While the Primary server handles both read and write requests, the Replica server is restricted to read-only operations. Data synchronization between the Primary and Replica servers occurs whenever the Primary executes a write action.

- **Distinction Between Primary and Replica Nodes Regarding Application Interaction**  
  The Primary node manages all write operations required by the website's functioning. In contrast, the Replica node is proficient in processing read operations. This distribution minimizes read traffic directed to the Primary node.
