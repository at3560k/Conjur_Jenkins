pipeline {
	agent any

	stages {
		stage ('Check server health') {
			steps {
				sh 'curl -k -i -X GET https://conjur-master/health'
			}
		}
		stage ('Update Policy') {
			steps {
				sh 'conjur policy load --as-group security_admin policy.yml'
			}
		}
	}
}
