DOT_FILES := .bashrc .vimrc .vim .gitconfig
GIT_SUBMODULES := $(shell awk '/path =/ {print $$3}' .gitmodules)

all: bash git vim

bash: $(foreach f, $(filter .bash%, $(DOT_FILES)), link-dot-file-$(f))
git: $(foreach f, $(filter .gitconfig, $(DOT_FILES)), link-dot-file-$(f))
vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))
  
link-dot-file-%: %
	@echo "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

clean: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<

submodule:
	@for i in $(GIT_SUBMODULES); \
	do \
		git submodule init $$i; \
		git submodule update $$i; \
	done
