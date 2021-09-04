pipeline {
  agent any
  stages {
    stage('Source') {
      steps {
        sh '''
        rm -rf build
        mkdir build
        cd build
        cmake ..
        cd ..
        curl -L -O https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
        unzip -o build-wrapper-linux-x86.zip
        ./build-wrapper-linux-x86/build-wrapper-linux-x86-64 --out-dir bw-output cmake --build build --config Release
        '''
      }
    }
    stage('SonarCloud') {
        environment {
            SCANNER_HOME = tool 'SonarQubeScanner'
            ORGANIZATION = "clarkyeah"
            PROJECT_NAME = "hello_jenkins_pipeline"
        }
        steps {
            withSonarQubeEnv('sonar') {
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