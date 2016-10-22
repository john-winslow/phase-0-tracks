1.  What are some of the key design philosophies of the Linux OS?

	There are 9 of them!
		1.  Small is beautiful
		2.  Each program does one thing well
		3.  Prototype as soon as possible
		4.  Choose portability over efficiency
		5.  Store data in flat text files
		6.  Use software leverage
		7.  Use shell scripts to increase leverage and portability
		8.  Avoid captive user interfaces
		9.  Make every program a filter

2.  What is a VPS (virtual private server)?  What are the advantages of using a VPS?
	
	A hosting service will sell a VPS as a service, allowing customers to use it to run its own copy of an OS.  It is a server created by software, as opposed to a dedicated physical server.  While they are cheaper, they can have lower performance based on the workload of the underlying hardware.


3.  Why is it considered a bad idea to run programs as the root user on a system?

	The root user has unlimited administrative access in a program - meaning they can modify the underlying system.  User level access will prevent ordinary users from being able to alter source programs/files.

	It also prevents stupid mistakes.  Root users can do anything they desire, and the system will assume they know what they are doing (format a disk with a simple command and no warning/confirmation, etc)