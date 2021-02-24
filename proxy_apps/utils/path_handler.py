import os

def join_path(path1, path2):
	return os.path.join(path1, path2)

def get_absolute_path(working_dir, relative_path):
	return os.path.abspath(join_path(working_dir, relative_path))

def init_directory(working_dir, relative_path):
	dir_path = get_absolute_path(working_dir, relative_path)
	if not os.path.exists(dir_path):
		os.makedirs(dir_path)

	return dir_path