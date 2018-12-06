with open("mytxt.txt") as file:
	file.write("foo")
	file.read()						
	# 不用file.close()
	# 因为with使用时所求值的对象必须要有一个__enter__()方法，一个__exit__()方法
# eg:
class Sample:
	def __enter__(self):
		print("In__enter__()")
		return "Foo"
	def __exit__(self,type,value,trace):
		print("In__exit__()")
def get_sample():
	return Sample()
	
with get_sample as sample:
	print("sample",sample)
