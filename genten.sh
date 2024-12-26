templates_dir="/Users/ahmad/Codes/Projects/genten/templates/"

if ! [[ -d $templates_dir ]]; then
  echo "templates directory not found: $templates_dir"
  exit 1
fi

if [[ "$#" -ne '1' ]]; then
  echo "Usage: $0 <PROJECT_NAME>"
  exit 1
fi

proj_name=$1
proj_dir=$PWD

cd $templates_dir

for template_file in *; do
  new_file=$proj_dir/$(echo $template_file | sed "s,PROJNAME,$proj_name,g")
  cp $template_file $new_file
  sed -i '' "s,PROJNAME,$proj_name,g" $new_file
done
