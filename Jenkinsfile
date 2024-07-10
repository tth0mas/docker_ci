pipeline {
    agent {
        docker {
            image 'your-username/podman:latest'  // Replace 'your-username' with your Docker Hub username
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'echo "Hello, World!"'
            }
        }
    }
}
