DOT_FILES := .profile .bashrc .vimrc .vim .gitconfig
GIT_SUBMODULES := $(shell awk '/path =/ {print $$3}' .gitmodules)

all: vim-dein-install profile bash git vim

profile: $(foreach f, $(filter .profile, $(DOT_FILES)), link-dot-file-$(f))
bash: $(foreach f, $(filter .bash%, $(DOT_FILES)), link-dot-file-$(f))
git: $(foreach f, $(filter .gitconfig, $(DOT_FILES)), link-dot-file-$(f))
vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))
  
link-dot-file-%: %
	@echo "Create Symlink $< => $(HOME)/$<"
	@ln -snf $(CURDIR)/$< $(HOME)/$<

clean: clean-dotfiles vim-dein-uninstall

clean-dotfiles: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))

unlink-dot-file-%: %
	@echo "Remove Symlink $(HOME)/$<"
	@$(RM) $(HOME)/$<

submodule:
	@for i in $(GIT_SUBMODULES); \
	do \
		git submodule init $$i; \
		git submodule update $$i; \
	done

xcode:
	@cp xcode/Custom.idekeybindings $(HOME)/Library/Developer/Xcode/UserData/KeyBindings

vim-dein-install:
	@if [ ! -d ".vim/.dein" ]; \
	then \
		mkdir -p .vim/.dein; \
		curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > .vim/.dein/installer.sh; \
		sh .vim/.dein/installer.sh .vim/.dein; \
	fi

vim-dein-uninstall:
	@if [ -d ".vim/.dein" ]; \
	then \
		rm -rf .vim/.dein; \
	fi
