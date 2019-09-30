podTemplate(label: 'mypod', containers: [
  containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat')
  ]) {

  node('mypod') {
    stage('Build a Maven project') {
      scm checkout
      container('maven') {
          sh 'mvn -version'
      }
    }
  }
}