pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      args '-v /tmp:/tmp'
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
