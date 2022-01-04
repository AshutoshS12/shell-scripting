Help:
	 @IFS=$$'\n' ; \
        help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
        for help_line in $${help_lines[@]}; do \
            IFS=$$'#' ; \
            help_split=($$help_line) ; \
            help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
            help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
            printf "%-30s %s\n" $$help_command $$help_info ; \
        done

cart: #### Set up Cart Component
	@bash Components/cart.sh

catalogue: #### Set up Catalogue Component
	@bash Components/catalogue.sh

user: #### Set up user Component
	@bash Components/user.sh

shipping: #### Set up Shipping Component
	@bash Components/shipping.sh

payment: #### Set up Payment Component
	@bash Components/payment.sh

frontend: #### Set up Frontend Component
	@bash Components/frontend.sh

mysql: #### Set up Mysql Component
	@bash Components/mysql.sh

redis: #### Set up Redis Component
	@bash Components/redis.sh

rabbitmq: #### Set up Rabbitmq Component
	@bash Components/rabbitmq.sh

mongodb: #### Set up Mongodb Component
	@bash Components/mongodb.sh