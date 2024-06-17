# NAS-setup
This is my automated solution for my NAS.
I use cosmos-server as manager of my NAS and Cockpit for managing RAID and partitions.

# How to deploy
1. Install terraform localy for Ubuntu:
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update
sudo apt install terraform
 ```
2. Clone my repository:
```
git clone  https://github.com/ilianvo/NAS-setup
```

3.Initialize and run terraform:
```
cd NAS-setup
terraform init 
terraform plan
terraform apply -auto-approve
```
![Blank diagram(2)](https://github.com/ilianvo/NAS-setup/assets/119301418/a78a5664-a1b6-476b-a305-e8bf9125f2ce)
