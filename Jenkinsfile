#!/usr/bin/env groovy
pipeline {
  agent any
  options {
    timestamps()
    ansiColor('xterm')
  }
  stages {
    stage('Running tests') {
      steps {
        dir('ci') {
          sh 'bash main.sh'
        }
      }
    }
    stage('Record Coverage') {
      when { branch 'master' }
      steps {
        script {
          currentBuild.result = 'SUCCESS'
        }
        step([$class: 'MasterCoverageAction', scmVars: [GIT_URL: env.GIT_URL]])
      }
    }
    stage('PR Coverage to Github') {
      when { allOf {not { branch 'master' }; expression { return env.CHANGE_ID != null }} }
      steps {
        script {
          currentBuild.result = 'SUCCESS'
        }
        step([$class: 'CompareCoverageAction', scmVars: [GIT_URL: env.GIT_URL]])
      }
    }
  }
  post {
    success {

    }
    always {

      echo 'Finally...'

      junit keepLongStdio: true, testResults: 'reports/*.junit.xml'
      cobertura coberturaReportFile: 'reports/*.coverage.xml', sourceEncoding: 'UTF_8'

      echo 'Finished!!!!!!!!!!!!'
    }
    cleanup {

    }
  }
}
