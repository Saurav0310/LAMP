pipeline {
  agent any
  stages {
    stage('Build Docker image') {
      steps {
        bat 'docker build . -t nginxjenkins:01'
      }
    }

    stage('Docker hub login') {
      steps {
        echo "ToDo: Logging to docker hub"
      }
    }

    stage('Docker push image') {
      steps {
        echo  "ToDo: pushing image to docker hub"
      }
    }
      stage('Docker run') {
      steps {
        bat 'docker run --name sauravnginx -d -p 8083:80 nginxjenkins:01'
          echo "Running the image"
      }
    }

  }
  tools {
    maven 'MAVEN'
  }
}
