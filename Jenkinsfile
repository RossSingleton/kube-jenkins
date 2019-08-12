pipeline {
    agent {
        kubernetes {
            label jenkins-slave
            yaml """
                kind: Pod
                metadata:
                labels:
                    some-label: jenkins-slave
                spec:
                containers:
                - name: jnlp
                    env:
                    - name: CONTAINER_ENV_VAR
                    value: jnlp
                - name: docker
                    image: docker
                    command:
                    - cat
                    tty: true
                    env:
                    - name: CONTAINER_ENV_VAR
                    value: docker
                - name: busybox
                    image: busybox
                    command:
                    - cat
                    tty: true
                    env:
                    - name: CONTAINER_ENV_VAR
                    value: busybox
                """
   }
    stages {
        stage('Build') { 
            steps {
                echo 'test'
                docker ps
            }
        }
    }
}