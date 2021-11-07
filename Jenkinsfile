pipeline {
  agent any
  stages {
    stage("Initiate"){
      steps {
        script {
          sh "bdwb --init"
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
