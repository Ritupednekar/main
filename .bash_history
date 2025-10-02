sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum update -y
sudo dnf install java-11-amazon-corretto -y
sudo dnf install java-17-amazon-corretto -y
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo yum install git -y
sudo su - jenkins
ssh-keygen -t rsa -b 4096 -C "jenkins@ec2-instance"
cat ~/.ssh/id_rsa.pub
