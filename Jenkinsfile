pipeline {
    agent any
    tools {
        maven 'maven'
    }
  stages {
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
            stage('Deploy') {
            steps {
                sh "mvn deploy sonar:sonar"
            }
        }
      stage('deploy to tomcat')
          steps{
            deploy adapters: [tomcat9(credentialsId: '60e7e3ba-75ff-47c6-8a6a-eb3edb01ed55', path: '', url: 'http://18.222.233.216:8080/')], contextPath: null, war: '**/*.war'
          }
  }
}
