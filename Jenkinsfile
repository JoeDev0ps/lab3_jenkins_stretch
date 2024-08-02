pipeline{
	agent any
	stages {
		stage('cleanup'){
			steps {
				sh "docker rm -f \$(docker ps -aq) || true"
				sh "docker rmi -f \$(docker images) || true"
			}
		}
		stage('build images'){
			steps {
				sh "docker build -t flask-app ."
			}
		}
		stage('run containers'){
			steps {
				sh "docker run -d -p 80:5500 flask-app"
			}
		}
	}
}
