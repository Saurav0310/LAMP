pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('saurav46')
	}

	stages {

		stage('Build') {

			steps {
				bat 'docker build . -t nginxjenkins:01'
			}
		}

		stage('Login') {

			steps {
				bat 'docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				bat 'docker push saurav46/myapp:1.0'
			}
		}
	}
}
