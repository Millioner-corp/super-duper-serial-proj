node {
    checkout scm
    try {
        sh 'ci/main.sh'
    }
    finally {
        echo 'Finally...'

        junit keepLongStdio: true, testResults: 'reports/*.junit.xml'
        cobertura coberturaReportFile: 'reports/*.coverage.xml', sourceEncoding: 'UTF_8'

        echo 'Push coverage...'

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


        echo 'Finished!!!!!!!!!!!!'
    }
}
