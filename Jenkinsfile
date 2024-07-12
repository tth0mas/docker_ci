pipeline {
    agent {
        docker { image 'thomasgh/podman:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}