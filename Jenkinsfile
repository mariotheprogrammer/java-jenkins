pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      echo '${env.BUILD_NUMBER}'
      echo docker.image.id
    }

  }
  stages {
    stage('Build') {
      steps {
        echo '${env.BUILD_NUMBER}'
        sh 'mvn -B -DskipTests clean package'
      }
    }

  }
}
