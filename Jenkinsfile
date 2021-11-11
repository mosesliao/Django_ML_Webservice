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
  }
  post {
    always {
      archiveArtifacts artifacts: 'deliverables/*.bin', followSymlinks: false
      cleanWs()
    }
  }
}
