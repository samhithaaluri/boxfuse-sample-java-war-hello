pipeline {
    agent any
    tools {
        maven 'maven'
        //dockerTool 'docker'
    }
  stages {
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // sh 'sudo -i'
                    // sh 'apt-get install docker.io'
                    sh 'docker --version'

                    // Build the Docker image
                    sh "docker build -t tomcat:1.0 ."
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    sh "docker login -u samhithaaluri -p Aluri@5157"

                    // Push the Docker image to Docker Hub
                    sh "docker tag tomcat:1.0 samhithaaluri/built_images:t_1"
                    sh "docker push samhithaaluri/built_images:t_1"
                }
            }
        }
  }
}
