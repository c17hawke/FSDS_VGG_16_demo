echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
# echo [$(date)]: "export conda environment"
# conda env export > conda.yaml
echo [$(date)]: "Curl .gitignore for python"
curl https://raw.githubusercontent.com/c17hawke/Pytorch-basics/main/.gitignore > .gitignore
# echo [$(date)]: "add env to gitignore"
# echo "env/" >> .gitignore
echo "# ${PWD}" > README.md # It means put present working directory outcome as heading of readme
echo [$(date)]: "first commit"
git add .
git commit -m "first commit"
echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/
