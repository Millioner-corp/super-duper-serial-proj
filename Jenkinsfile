node {
    checkout scm
    try {
        sh 'ci/main.sh'
    }
    finally {
        echo 'Finally...'

        junit keepLongStdio: true, testResults: 'reports/*.junit.xml'
        cobertura coberturaReportFile: 'reports/*.coverage.xml', sourceEncoding: 'UTF_8'

        echo 'Finished!!!!!!!!!!!!'
    }
}
