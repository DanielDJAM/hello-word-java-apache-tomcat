pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t hello-world-java-apache-tomcat .'
                sh 'docker run -d -p 8089:8080 hello-world-java-apache-tomcat'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -m http://localhost:8089/app-web-daniel'
                sh 'curl -s http://localhost:8089/app-web-daniel/ | grep Daniel'
            }
        }
    }
}
