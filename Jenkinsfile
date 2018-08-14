node {
  checkout scm
  try {
    ansiColor('xterm') {
      sh 'ci/main.sh'
    }
  }
  finally {
     echo 'Finished!!!!!!!!!!!!'
  }
}
