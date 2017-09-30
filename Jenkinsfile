pipeline {
	agent any

	stages {
		stage ('Check server health') {
			steps {
				sh 'printf \"Hello World\"'
			}
		}
		stage ('Update Policy') {
			steps {
				sh 'conjur policy load --as-group security_admin policy.yml'
			}
		}
	}
}
