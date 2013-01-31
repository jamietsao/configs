import xml.dom.minidom

# parse an XML file by name
classpathFile = '.classpath'
document = xml.dom.minidom.parse(classpathFile) 
#print(document.toxml())
classpath = document.firstChild
entries = classpath.childNodes

# create node for adding src folder to build path
newNode = document.createElement('classpathentry')
newNode.setAttribute('kind', 'src')
newNode.setAttribute('path', 'src')
#print(newNode.toxml())

# add new node into build path
for entry in entries:
  if entry.localName == 'classpathentry':
    # Add new node before "test" entry
    if entry.getAttribute('path') == 'test':
      classpath.insertBefore(newNode, entry)

# save changes
fw = open(classpathFile, 'w')
fw.write(document.toxml())
fw.close()

