#include <assert.h>

struct Simple
{
	int a, b, c ;
};

int main()
{
	int a1,b1,c1 ;

	struct Simple obj1;
	obj1.a = a1 ;
	obj1.b = b1 ;
	obj1.c = c1 ;

	struct Simple obj2 = obj1 ;

	assert(obj1.a == obj2.a && obj1.b == obj2.b && obj1.c == obj2.c);

	struct Simple obj3 ;
	obj3 = (struct Simple){a1,b1,c1};

	assert(obj1.a == obj2.a && obj1.b == obj2.b && obj3.c == obj3.c);


	return 0 ;

}