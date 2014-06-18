REBAR = $(CURDIR)/rebar
NAME = {{name}}

all: compile-full

run:
	ERL_LIBS=deps:apps erl -name $(NAME)-dev@127.0.0.1 -s $(NAME)_app

compile:
	$(REBAR) compile skip_deps=true

compile-full: update-deps
	$(REBAR) compile

clean:
	$(REBAR) clean skip_deps=true

clean-full:
	$(REBAR) clean

distclean: clean-full
	$(REBAR) delete-deps

get-deps:
	$(REBAR) get-deps

update-deps:
	$(REBAR) update-deps

eunit:
	$(REBAR) eunit skip_deps=true
