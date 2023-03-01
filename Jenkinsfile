pipeline{
    agent any

    stages{

        stage('Git clone'){
            steps{
                git branch: 'main', url: 'https://github.com/testgit4me/devschool-task11.git'
            }
        }

        stage('Build artifact'){
            steps{  
                echo "Building artifact"
            }
        }

        stage('Push to repo'){
            steps{
                echo "Pushing to Github"
            }
        }
    }
}