pipeline {
    agent any
    /*tools {
        dockerTool 'docker'
    }*/
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Ensure Docker is available
                    sh 'docker --version'

                    // Build the Docker image
                    sh "docker build -t tomcat:test ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    sh "docker login -u samhithaaluri@gmail.com -p Aluri@5157"

                    // Push the Docker image to Docker Hub
                    sh "docker push tomcat:test"
                }
            }
        }
    }

}
