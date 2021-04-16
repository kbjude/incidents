pipeline {
    agent any
    environment {
        CI = 'true'
        HOME = '.'
    }
    stages {
        stage('Build & Test') {
            agent {
                docker {
                    image 'nikolaik/python-nodejs:latest'
                    args '-p 3005:3005'
                }
            }
            steps {
                sh 'rm -rf /var/lib/jenkins/workspace/wsr-web/node_modules'
                
            }
        }
        stage('Deliver') {
            agent { node { label 'master' } }
            steps {
                sh './script/deploy.sh'
            }
            post {
                success {
                    mail to: 'builds@innovationvillage.co.ug', from: 'TIV DEVOPS <noreply@devops.innovationvillage.co.ug>', subject: '[WSR - TEST] New build available!', body: 'Check it out!'
                }
            }
        }
    }
    post {
        failure {
            // Notify developer team of the failure
            mail to: 'builds@innovationvillage.co.ug', from: 'TIV DEVOPS <noreply@devops.innovationvillage.co.ug>', subject: '[WSR - TEST] Build error', body: "[WSR - TEST] Build ${env.BUILD_NUMBER} failed; ${env.BUILD_URL}"
        }
    }
}
