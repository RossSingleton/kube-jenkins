pipeline {
    agent {
        kubernetes {
            yamlFile 'pod-template.yaml'
        }
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