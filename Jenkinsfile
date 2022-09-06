def COLOR_MAP = ['SUCCESS': 'good', 'FAILURE': 'danger', 'UNSTABLE': 'danger', 'ABORTED': 'danger']

pipeline {
  agent {label 'master'}
  stages {
    
    stage('build') {
      steps {
        echo 'Building a docker image'
        sh './scripts/build'
      }
    }
    stage('deploy') {
      steps {
        echo 'Deployment is in progress'
        sh './scripts/deploy'
      }
    }
  }
 post {
     always {
            sh 'git show -s --pretty=%an > commit.txt'
