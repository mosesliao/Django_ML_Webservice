pipeline {
  agent any
  stages {
    stage("Build"){
      steps {
        script {
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
}
