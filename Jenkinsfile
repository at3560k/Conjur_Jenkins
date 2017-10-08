pipeline {
	agent any

	stages {
		stage ('Test Pipeline') {
			steps {
				sh 'printf \"Hello World\"'
			}
		}
		stage ('Update Policy') {
			steps {
				sh 'conjur policy load --as-group security_admin policy/policy.yml'
			}
		}
	}
}
