pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Diansy72/php-simple-ci.git'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'run_tests.bat'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t php-simple-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 8080:8080 php-simple-app'
            }
        }
    }
}
