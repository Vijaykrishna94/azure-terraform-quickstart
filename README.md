# azure-terraform
**The Demo Creates a Virtual Network to Spin VM and Bastion to Access the VM's through a public IP**

The Infra Diagram
![image](https://github.com/user-attachments/assets/ce422ace-ba3b-49a8-aac0-d60e1b4601ff)


## main.tf

To Make this interesting A random pet name is generated and assigned as prefix

![image](https://github.com/user-attachments/assets/fbc1e8ab-4598-42ae-9037-20e631bcd60b)


Creating Resource Group

![alt text](image-3.png)




Creating Virtual Network with 2 subnets one for Bastion and the other for VM's 

![image](https://github.com/user-attachments/assets/1da62014-b412-45c5-b537-e5ec757aa07c)

## vm.tf
### Setting up VM's....

Configuring Availablity Sets  for fault tolerance and updates

![image](https://github.com/user-attachments/assets/5e381db4-9085-43f4-8048-63b3caf3ac43)

![image](https://github.com/user-attachments/assets/da367c8a-72f3-4ca3-8057-dd44e7d0e811)


Configuring OS

![image](https://github.com/user-attachments/assets/0e9a917c-885a-4cca-a82a-b690cb34c1e6)


## netwroking.tf
Configuring Network Interface cards with Dynamic IP - To connect to VM's the Virtual network

![image](https://github.com/user-attachments/assets/5698f934-f8f5-4a02-962d-752c5c64aa49)

In this step we also create NSG  - To Regulate the traffic and restric the internet Access to VM's

We Setup Bastion with Static IP To interact with the VM's through SSH




### Topology

![alt text](image-6.png)




**Let's Ping VM2 from VM1 to test**
![alt text](image.png)
