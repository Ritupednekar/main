pipeline {
    agent any

    triggers {
        githubPush()   // Trigger when push happens
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop',
                    url: 'https://github.com/Ritupednekar/main.git'
            }
        }

        stage('Copy to Folder') {
            steps {
                sh '''
                TARGET_DIR=/home/ec2-user/deploy_folder
                mkdir -p $TARGET_DIR
                cp -r * $TARGET_DIR/
                echo "Code deployed to $TARGET_DIR"
                '''
            }
        }
    }
}
