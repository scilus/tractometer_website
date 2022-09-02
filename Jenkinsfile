pipeline {
    agent any
    stages {
        stage ('build') {
            steps {
                sh 'hugo -D -F -b "https://tractometer.org" -d tractometer.org'
            }
        }
        stage ('deploy') {
            steps {
                sh 'rsync --delete -r "$WORKSPACE/tractometer.org/" jenkins@dinf-geospize2:/var/www/tractometer.org/'
            }
        }
    }
}
