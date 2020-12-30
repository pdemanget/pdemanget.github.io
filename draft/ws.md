ws-ml
-----
WhiteSpace MetaLanguage

Usage
=====
 
 * encode
 
    ws-ml -file datafile -code destfile

 * decode
 
    ws-ml -file createddatafile -decode codedfile



key-vallist transco

s->size-value size [size-value]+
size dynamic bit encoding
value: 7bits dynamic encoding

7 bit size - x*7 bit chars
0x48

### TCD 10 bits HCD: 7 bits

or struct list:
bit
byte
char
0A

0D

20 
09	


7 14 21 28

7 char pour encoder 4?

test
----
a:[hello]

'''ws-8

	
	 
				
						

'''ws-8

0 1201 0 1 21 1220 1211 1230
012010121122012111230




0 : 0bit longueur 1 car
1201 = 0x61 
0 : 1 elt
1 : 4 bit longueur
21 =0x05 longueur
1220  68 h
1211  65 e
1230  6c l 


Correspondance
---------------
0 0A
1 20
2 09
3 0D alt13


0 00
1 01
2 02
3 03
4 10
5 11
6 12
7 13
8 20
9 21
A 22
B 23
C 30
D 31
E 32
F 33




### table
32	20	 
33	21	!
34	22	"
35	23	#
36	24	$
37	25	%
38	26	&
39	27	'
40	28	(
41	29	)
42	2A	*
43	2B	+
44	2C	,
45	2D	-
46	2E	.
47	2F	/
48	30	0
49	31	1
50	32	2
51	33	3
52	34	4
53	35	5
54	36	6
55	37	7
56	38	8
57	39	9
58	3A	:
59	3B	;
60	3C	<
61	3D	=
62	3E	>
63	3F	?
64	40	@
65	41	A
66	42	B
67	43	C
68	44	D
69	45	E
70	46	F
71	47	G
72	48	H
73	49	I
74	4A	J
75	4B	K
76	4C	L
77	4D	M
78	4E	N
79	4F	O
80	50	P
81	51	Q
82	52	R
83	53	S
84	54	T
85	55	U
86	56	V
87	57	W
88	58	X
89	59	Y
90	5A	Z
91	5B	[
92	5C	\
93	5D	]
94	5E	^
95	5F	_
96	60	`
97	61	a
98	62	b
99	63	c
100	64	d
101	65	e
102	66	f
103	67	g
104	68	h
105	69	i
106	6A	j
107	6B	k
108	6C	l
109	6D	m
110	6E	n
111	6F	o
112	70	p
113	71	q
114	72	r
115	73	s
116	74	t
117	75	u
118	76	v
119	77	w
120	78	x
121	79	y
122	7A	z
123	7B	{
124	7C	|
125	7D	}
126	7E	~
127	7F	


