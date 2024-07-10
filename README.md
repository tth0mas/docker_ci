getting familiar with jenkins and docker, setting up a pipeline //
partly following: https://github.com/ibm-cloud-architecture/refarch-cloudnative-devops-kubernetes/blob/master/docs/podman.md //
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts //

using a podman image pushed to docker hub docker.io/thomasgh podman:latest
