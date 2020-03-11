pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
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