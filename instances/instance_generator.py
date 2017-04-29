from sys import stdin, argv

def write_attribute_type(attribute, data_type):
	if data_type == 'STRING':
		if attribute[0] == '[':
			attrs = attribute[1:-1].split(' ')
			return ' '.join(['"' + attr + '"' for attr in attrs])
		else:
			return '"' + attribute + '"'
	else:
		if attribute[0] == '[':
			attrs = attribute[1:-1].split(' ')
			return ' '.join([attr for attr in attrs])
		else:
			return attribute

def generate_instance(class_name):
	instance_id = 10000

	instances_file = class_name.lower() + '.txt'

	with open (instances_file, 'r') as input_file:
		lines = input_file.readlines()
		headers = lines[0].rstrip().split('\t')
		types = lines[1].rstrip().split('\t')
		lines = lines[2:]

		with open ('./instances-' + instances_file + '.txt', 'w+') as f:
			for line in lines:
				if line[0] == ';':
					continue

				f.write('([rico_rico_Class' + str(instance_id) + '] of ' + class_name)

				line_list = line.split('\t')
				line_list[-1] = line_list[-1].rstrip()

				print(line_list)
				for index, attribute in enumerate(line_list):
					header = headers[index]
					data_type = types[index]
					f.write('\n\t' + '(' + header + ' ' + write_attribute_type(attribute, data_type) + ')')
				f.write('\n)\n\n')

				instance_id += 1

if __name__ == '__main__':
	args = argv[1:]
	for arg in args:
		generate_instance(arg)
