pipeline {
    agent {
        docker { image 'thomasgh:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}