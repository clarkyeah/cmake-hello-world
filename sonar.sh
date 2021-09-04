sonar-scanner \
 -Dsonar.organization=clarkyeah \ 
 -Dsonar.projectKey=hello_jenkins_pipeline \
 -Dsonar.sources=. \
 -Dsonar.cfamily.build-wrapper-output=bw-output\
 -Dsonar.host.url=https://sonarcloud.io \
 -Dsonar.login=27709c1aaae41e3e1858153d3fb8e77f0d38273d
