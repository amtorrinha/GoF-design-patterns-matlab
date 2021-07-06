a = {};
a1 = isempty(a);

b = [];
b1 = isempty(b);

c = libpointer;
c1 = isempty(c);
c2 = isNull(c);

d = libpointer('doublePtr', []);
d1 = isNull(d);