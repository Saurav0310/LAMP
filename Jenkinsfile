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
        withCredentials([string(credentialsId: 'Saurav46', variable: 'dockerhubpwd')]) {
        bat 'docker login -u devopshint -p $(dockerhubpwd)'
}
      
       bat 'docker push devopshint/my-app-1.0'   
      }
    }

    stage('Docker push image') {
      steps {
        echo  "ToDo: pushing image to docker hub"
      }
    }
      stage('Docker run') {
      steps {
        bat 'docker run --name jenkinsnginx -d -p 8082:80 nginxjenkins:01'
          echo "Running the image"
      }
    }

  }
  tools {
    maven 'MAVEN'
  }
}
