

pipeline {
    agent any
    stages {
        stage('build') {
            steps {
		echo 'Building...'            
	    	sh 'docker-compose -f 5-node-pbft.yaml up'
	    }
        }
	stage('test') {
	    steps {
		echo 'testing...'
	    }
	}
	stage('deploy') {
	    steps {
		echo 'deploying...'
	    }
	}
    }
    post {
	always {
		junit '**/target/*.xml'
	}
	failure {
	    echo 'pipeline failed'
	}
    }
}
