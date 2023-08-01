pipeline {
    agent {
        docker {
            
            image 'mvntest'
			
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
