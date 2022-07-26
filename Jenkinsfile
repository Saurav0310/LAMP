pipeline {

    agent any {
        tools maven 'MAVEN'
              }

    stages {
        stage ('build docker image') {
            steps {
                sh 'docker build . -t nginxjenkins:01'
            }
        }

        stage ('docker hub login') {
            steps {
                echo  "ToDo: Logging to docker hub"
            }
        }

        stage ('Docker push image') {
            steps {
                echo  "ToDo: pushing image to docker hub"
            }
        }

        stage ('Pulling image') {
            steps {
                echo  "ToDo: Pulling image from Docker hub"
            }
        }

        stage ('Docker run') {
            steps {
                sh 'docker run --name jenkinsnginx -d -p 8082:80 nginxjenkins:01'
                echo  "Running the image"
            }
        }
    }



}
