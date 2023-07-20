pipeline {
    agent any
    tools {
        maven 'maven'
    }
  stages {
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
         /*stage('Deploy') {
            steps {
                sh 'mvn deploy sonar:sonar'
            }
        }
      stage('deploy to tomcat'){
          steps{
            deploy adapters: [tomcat9(credentialsId: '60e7e3ba-75ff-47c6-8a6a-eb3edb01ed55', path: '', url: 'http://18.222.233.216:8080/')], contextPath: null, war: '**/*.war'
  }
      }*/
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
