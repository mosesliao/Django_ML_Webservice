pipeline {
  agent any
  environment{
    PATH = "/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/ec2-user/.local/bin:/home/ec2-user/bin"
  }
  stages {
    stage("Build"){
      steps {
        script {
          sh "bdwb django-app.wb"
        }
      }
    }
    stage('test') {
      sh 'bdwb --launchui'
      sh 'docker ps -a'
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
