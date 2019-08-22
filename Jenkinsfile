podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]) {
    node('mypod') {
        stage('do some Docker work') {
            container('docker') {
                // sh "docker stop mail"
                // sh "docker rm mail"
                sh "docker run --restart always --name mail -d bytemark/smtp"
                sh "docker stop mail"
                sh "docker rm mail"
                sh "docker ps"
            }
        }
    }
}