## Steps to Build the Docker Image using Jenkins
* Docker must be installed on the Jenkins node with login credentials configured.
* Add the Jenkins to the sudoers file ```/etc/sudoers```.
* Then, we can add the docker command in th execute shell or Jenkinsfile.

---
## For building the above image, I used the following commands in the Jenkins execute shell
```
sudo docker build -t webserverjenkins:v1 .
sudo docker tag webserverjenkins:v1 launchpad5682/webserverjenkins:v1
sudo docker push launchpad5682/webserverjenkins:v1
```
* We can also parameterize the variables in Job.
* Finally, the image is built and uploaded to the DockerHub. Now, we can use the same image to create deployment or any resource using Kubernetes.
