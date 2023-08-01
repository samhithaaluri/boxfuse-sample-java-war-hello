pipeline {
    agent {
        docker {
            
            image 'mvntest:latest'
			
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn --version'
				sh 'mvn clean package'
            }
        }
    }
}
