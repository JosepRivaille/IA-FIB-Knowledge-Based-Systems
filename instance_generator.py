from sys import stdin, argv

def write_attribute_type(attribute, data_type):
	if data_type == 'STRING':
		if attribute[0] == '[':
			attrs = attribute[1:-1].split(' ')
			return ' '.join(['"' + attr.replace("_", " ") + '"' for attr in attrs])
		else:
			return '"' + attribute.replace("_", " ") + '"'
	else:
		if attribute[0] == '[':
			attrs = attribute[1:-1].split(' ')
			return ' '.join([attr for attr in attrs])
		else:
			return attribute

def generate_instance(class_name):
	counter = 0

	instances_file = class_name.lower()

	with open ('instances/' + instances_file + '.txt', 'r') as input_file:
		lines = input_file.readlines()
		headers = lines[0].rstrip().split('\t')
		types = lines[1].rstrip().split('\t')
		lines = lines[2:]

		with open('rico_rico.pins', 'a') as f, open('rico_rico.pins.clp', 'a') as fc:
			fc.write('(definstances ' + instances_file + '\n')

			for line in lines:
				if line[0] == ';':
					continue

				line_list = line.split('\t')
				line_list[-1] = line_list[-1].rstrip()

				print(line_list[0])
				assert len(line_list) == len(headers)

				f.write('([' + line_list[0].lower() + '] of ' + class_name)
				fc.write('\t([' + line_list[0].lower() + '] of ' + class_name)

				for index, attribute in enumerate(line_list):
					header = headers[index]
					data_type = types[index]
					f.write('\n\t' + '(' + header + ' ' + write_attribute_type(attribute, data_type) + ')')
					fc.write('\n\t\t' + '(' + header + ' ' + write_attribute_type(attribute, data_type) + ')')
				f.write('\n)\n\n')
				fc.write('\n\t)\n\n')

				counter += 1
			fc.write(')\n')

	print('Successfully created ' + str(counter) + ' instances of ' + class_name)

if __name__ == '__main__':
	open('rico_rico.pins', 'w').close()
	open('rico_rico.pins.clp', 'w').close()
	args = argv[1:]
	for arg in args:
		print(arg)
		generate_instance(arg)
