pipeline {
  agent any
  stages {
    stage('Installing') {
      steps {
        bat 'sudo a2ensite your_domain'
      }
    }

    stage('reloading') {
      steps {
        echo "sudo systemctl reload apache2"
      }
    }
  }
  tools {
    maven 'MAVEN'
  }
}
