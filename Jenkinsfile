podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]) {
    node('mypod') {
        stage('do some Docker work') {
            container('docker') {
                sh "docker stop baed71e9fe0ff5b94054843699a52d7f703215516ade175239525c87513a0a3c"
                sh "docker rm baed71e9fe0ff5b94054843699a52d7f703215516ade175239525c87513a0a3c"
                sh "docker run --rm --name mail -d bytemark/smtp"
                sh "docker ps"
            }
        }
    }
}