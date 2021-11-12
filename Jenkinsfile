pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '30', artifactNumToKeepStr: '30'))
  }
  stages {
    stage("Build"){
      steps {
        script {
          echo "build bin file for HPE Ezmeral platform"
          sh "bdwb django-app.wb"
        }
      }
    }
    stage('Deploy') {
      sh 'scp deliverables/*.bin root@172.31.95.116:/srv/bluedata/catalog/'
    }
  }
  post {
    always {
      archiveArtifacts artifacts: 'deliverables/*.bin', followSymlinks: false
      cleanWs()
    }
  }
}
