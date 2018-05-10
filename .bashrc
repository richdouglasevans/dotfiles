
mkcd() {
  mkdir -p $1 && cd $1
}

alias blat="mvn clean install -DskipTests -Dmaven.test.skip=true"
alias venv="source venv/Scripts/activate"

export PYTHONIOENCODING=UTF-8
export npm_config_EDITOR=subl
