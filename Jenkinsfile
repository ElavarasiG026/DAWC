pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-website .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker rm -f devops-website-container || exit 0'
                bat 'docker run -d -p 8090:80 --name devops-website-container devops-website'
            }
        }
    }

    post {
        success {
            echo 'Website deployed successfully!'
            echo 'Open http://localhost:8090'
        }
        failure {
            echo '❌ Pipeline failed'
        }
    }
}