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
