pipeline {
    // agent {
    //     kubernetes {
    //         yamlFile 'pod-template.yaml'
    //     }
    // }
    agent {
        label "docker"
    }
    stages {
        stage('Build') { 
            steps {
                sh 'echo test'
                sh 'docker ps'
            }
        }
    }
}