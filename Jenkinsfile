podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
  ],
  volumes: [
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  ]) {
    node('mypod') {
        stage('do some Docker work') {
            container('docker') {
                // sh "docker stop fad6db0f155881526db77602c124b30550760a53687c512fcfdc87770562a4cb"
                // sh "docker rm fad6db0f155881526db77602c124b30550760a53687c512fcfdc87770562a4cb"
                sh "docker run --rm --name mail bytemark/smtp"
                sh "docker stop mail"
                sh "docker ps"
            }
        }
    }
}