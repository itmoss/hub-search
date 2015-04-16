<<<<<<< HEAD
# Makefile for
=======
>>>>>>> 50e667568d9989c0b3f63ae4e3753011e117a13b
all: usage

PROGRAM=hub-search
EDITOR=vim

edit e:
	$(EDITOR) $(PROGRAM).go

readme md:
	$(EDITOR) README.md

build b:
	go build $(PROGRAM).go
	@ls -alF --color=auto

run r:
<<<<<<< HEAD
	./$(PROGRAM) --lang=go webrtc server --list=1 -d

test t:
	./$(PROGRAM) tugboat 
	./$(PROGRAM) tugboat --lang=go
	./$(PROGRAM) tugboat --lang=go --sort=stars
	./$(PROGRAM) tugboat --lang=go --sort=stars --order=asc --text --score=10
	./$(PROGRAM) tugboat --lang=go --down --list=1
=======
	./$(PROGRAM) --lang=go webrtc server --down

test t:
	./$(PROGRAM) tugboat
	./$(PROGRAM) tugboat --lang=go
	./$(PROGRAM) tugboat --lang=go --sort=stars
	./$(PROGRAM) tugboat --lang=go --sort=stars --order=asc --text --down
>>>>>>> 50e667568d9989c0b3f63ae4e3753011e117a13b

rebuild:
	rm -f ./$(PROGRAM)
	go build $(PROGRAM).go
	@ls -alF --color=auto

install i:
	go install

clean:
	rm -f ./$(PROGRAM)

<<<<<<< HEAD
start:
	git init
	git pull https://github.com/sikang99/hub-search master
	#git remote set-url origin https://github.com/sikang99/$(PROGRAM).git

git g:
	git status
	git add *
	git commit -m "add some more options"
=======
git g:
	git add *
	git commit -m "fix or modified"	
>>>>>>> 50e667568d9989c0b3f63ae4e3753011e117a13b
	git push -u origin master
	git log --oneline -5

make m:
	$(EDITOR) Makefile

usage:
	@echo ""
	@echo "Makefile for '$(PROGRAM)', by Stoney Kang, 2015/04/12"
	@echo ""
	@echo "usage: make [edit|readme|build|run|test|rebuild|clean|git]"
	@echo "	edit    : edit source"
	@echo "	build   : compile source"
	@echo "	run     : execute $(PROGRAM)"
	@echo "	test    : test $(PROGRAM) options"
	@echo "	install : install $(PROGRAM) to $(GOPATH)/bin"
<<<<<<< HEAD
	@echo "	git     : upload $(PROGRAM) to github.com"
=======
>>>>>>> 50e667568d9989c0b3f63ae4e3753011e117a13b
	@echo ""
