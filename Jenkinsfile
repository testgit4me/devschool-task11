pipeline{
    agent any

    stages{

        stage('Git clone'){
            steps{
                git branch: 'main', url: 'https://github.com/testgit4me/devschool-task11.git'
            }
        }

        stage('Building jar'){
            steps{  
                echo "Building artifact"
            }
        }

        stage('Building image'){
            steps{
                echo "Pushing to Github"
            }
        }
    }
}