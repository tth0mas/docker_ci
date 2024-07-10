pipeline {
    agent {
        docker {
            image 'thomasgh/podman:latest'  // Replace 'your-username' with your Docker Hub username
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
