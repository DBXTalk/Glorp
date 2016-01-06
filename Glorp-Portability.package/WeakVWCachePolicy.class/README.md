This is a cache policy that uses VisualWorks 7.x weak references (ephemerons) to store references to objects, letting them vanish if not referenced. It uses the numberOfElements inst var as an indicator of how many objects to keep hard references to, preventing objects from disappearing too quickly.

Instance Variables: