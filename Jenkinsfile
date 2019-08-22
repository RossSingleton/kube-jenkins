podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]) {
    node('mypod') {
        stage('do some Docker work') {
            container('docker') {
                sh "docker kill *"
                sh "docker run --rm --name mail -d bytemark/smtp"
                sh "docker ps"
            }
        }
    }
}