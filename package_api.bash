root_dir=$(pwd)
venv_dir="$root_dir/venv/lib/python3.8/site-packages"
cd $venv_dir && zip -r9 "$root_dir/serverless-fastapi.zip" . \
&& cd "$root_dir" && zip -g serverless-fastapi.zip -r app