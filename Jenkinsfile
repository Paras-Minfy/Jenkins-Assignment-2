pipeline {
    agent any

    environment {
        IMAGE_NAME = "parasminfy/jenkins-assignment-2"
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Paras-Minfy/Jenkins-Assignment-2.git'
            }
        }

        stage('Build & Test Docker Image') {
            steps {
                script {
                    echo "🔧 Building Docker image with unit tests..."
                    docker.build("${IMAGE_NAME}:latest")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    echo "📦 Pushing image to Docker Hub..."
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        docker.image("${IMAGE_NAME}:latest").push()
                    }
                }
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline completed successfully — image built and pushed!"
        }
        failure {
            echo "❌ Pipeline failed — check logs for build/test/push errors."
        }
    }
}
