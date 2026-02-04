pipeline {
    agent any

    environment {
        SSH_IP = ''
        DEPLOY_PATH = '/root/Final_devops01_project'
    }

    stages {
        stage ("Deploy final project") {
            steps {
                withCredentials([
                    sshUserPrivateKey(
                        credentialsId: "ssh-key", 
                        keyFileVariable: 'SSH_KEY', 
                        usernameVariable: 'SSH_USER'
                        )
                ]) {
                        sh """
                            ssh -o StrictHostKeyChecking=no -i ${SSH_KEY} ${SSH_USER} '
                                cd ${env.DEPLOY_PATH} && git pull
                                docker-compose down
                                docker-compose build
                                docker-compose up -d
                            '
                        """
                    }
            }
        }
    }
}