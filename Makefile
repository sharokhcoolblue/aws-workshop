#.PHONY: deploy_cloudformation
#deploy_cloudformation: ## Deploy stack for project
#    # Deploy cloudformation
#    @aws cloudformation deploy \
#        --stack-name "$(STACKID)" \
#        --template-file $(STACK)/cloudformation.yaml \
#        --parameter-overrides "Environment=$(ENVIRONMENT)" \
#        --capabilities CAPABILITY_NAMED_IAM \
#        --no-fail-on-empty-changeset
#
#    # Done!
.PHONY: deploy_cloudformation
deploy_cloudformation:
	@aws cloudformation deploy \
        --stack-name "shahrokh-aws-workshop" \
        --template-file cloudformation.yaml \
        --region eu-west-1 \
        --profile development \
        --capabilities CAPABILITY_NAMED_IAM \
        --no-fail-on-empty-changeset
