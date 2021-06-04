

pipeline {
    stages {
        stage('build') {
	    agent any
            steps {
		echo 'Building...'            
	    }
        }
	stage('test') {
	    agent {
		docker {
		    image 'hello-world'
		}
	    }
	    steps {
		echo 'Testing...'
	    }
	}
	stage('deploy') {
	    agent any
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
