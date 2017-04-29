from sys import stdin

def generate_instance():
	class_name = raw_input('Enter class name: ')
	print('Params:')
	params = userinput = stdin.readline().rstrip()
	attributes = params.split(' ')

	instance_id = 10000

	f = open('instances.txt', 'a')
	# with open 'instances.txt' as f:

	while (True):
		header = '([rico_rico_Class' + str(instance_id) + '] of ' + class_name
		for a in attributes:
			data = raw_input(a + ': ')
			header += '\n\t' + '(' + a + ' ' + data + ')'
		header += ')'
		f.write(header + '\n\n')
		instance_id += 1

	f.close()

if __name__ == '__main__':
	generate_instance()