pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        sh 'build_wrapper.sh'
      }
    }
    stage('SonarCloud') {
        environment {
            SCANNER_HOME = tool 'SonarQubeScanner'
            ORGANIZATION = "clarkyeah"
            PROJECT_NAME = "hello_jenkins_pipeline"
        }
        steps {
            withSonarQubeEnv('Sonar') {
                sh '''$SCANNER_HOME/bin/sonar-scanner \
                -Dsonar.organization=clarkyeah \
                -Dsonar.projectKey=hello_jenkins_pipeline \
                -Dsonar.sources=. \
                -Dsonar.cfamily.build-wrapper-output=bw-output \
                -Dsonar.host.url=https://sonarcloud.io'''
            }
        }
    }
  }
}