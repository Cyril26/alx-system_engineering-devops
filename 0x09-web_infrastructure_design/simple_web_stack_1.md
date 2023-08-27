# Web Infrastructure Design

## 0. Simple Web Stack

### Specifics About This Infrastructure

- **What a server is.**  
  A server is a piece of computer hardware or software that provides functionality for other programs or devices, called "clients".

- **The role of the domain name.**  
  The domain name helps users find their way around the Internet. It's a string of text that maps to a numeric IP address, used to access a website from client software.

- **The type of DNS record `www` is in `www.foobar.com`.**  
  The `www.foobar.com` domain uses an A record. This can be verified by running `dig www.foobar.com`. Note that the results might vary, but for the infrastructure in this design, an A record is used. An A record is an Address Mapping record that stores a hostname and its corresponding IPv4 address.

- **The role of the web server.**  
  The web server serves web pages to clients upon their request. It uses the HTTP protocol for communication.

- **The role of the application server.**  
  The application server provides clients with access to business logic, generating dynamic content. It transforms data to offer specialized functionality for a business, service, or application.

- **The role of the database.**  
  The database maintains an organized collection of information that can be accessed, updated, and managed.

- **What the server uses to communicate with the client (user's computer requesting the website).**  
  Communication between the client and the server takes place over the internet network using the TCP/IP protocol suite.
