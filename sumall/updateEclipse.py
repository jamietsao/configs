import xml.dom.minidom

# parse an XML file by name
classpathFile = '.classpath'
document = xml.dom.minidom.parse(classpathFile) 
#print(document.toxml())
classpath = document.firstChild
entries = classpath.childNodes

# create node for adding /Common project to build path
newNode = document.createElement('classpathentry')
newNode.setAttribute('combineaccessrules', 'false')
newNode.setAttribute('kind', 'src')
newNode.setAttribute('path', '/Common')
#print(newNode.toxml())

# remove Common-0.1 module from source path & add new node into build path
for entry in entries:
  if entry.localName == 'classpathentry':
    if entry.getAttribute('kind') == 'src' and entry.getAttribute('path') == 'Common-1.1':
      classpath.removeChild(entry)
    if entry.getAttribute('kind') == 'output':
      classpath.insertBefore(newNode, entry)

# save changes
fw = open(classpathFile, 'w')
fw.write(document.toxml())
fw.close()

