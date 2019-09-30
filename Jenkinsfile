podTemplate(label: 'mypod', containers: [
  containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat'),
  containerTemplate(name: 'busybox', image: 'busybox:latest', ttyEnabled: true, command: 'cat')
  ]) {

  node('mypod') {
    stage('Checkout') {
        checkout scm
    }
    stage('Build a Maven project') {
      container('maven') {
          sh 'mvn -version; ls'
      }
    }
    stage('Do ls') {
        container('busybox') {
            sh 'export; ls'
        }
    }
  }
}