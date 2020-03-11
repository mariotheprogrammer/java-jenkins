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
        sh 'ls -la /tmp'
        sh 'mvn -B -DskipTests clean package'
      }
    }
  }
  
  stages {
    stage('Cleanup') {
      steps {
        sh 'docker system prune -af --volumes'
      }
    }
  }
}
