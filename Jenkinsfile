pipeline {
  agent any
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
      steps {
        script{
          echo 'deploy stage'
        }
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
