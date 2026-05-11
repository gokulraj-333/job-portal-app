import os
import re

directory = r'c:\Users\Gokul Raj\Downloads\jobportal-springboot-jsp-master\jobportal-springboot-jsp-master\src\main\webapp'

def process_file(filepath):
    with open(filepath, 'r', encoding='ISO-8859-1') as f:
        content = f.read()

    original_content = content

    # Add CSS link if not already present
    if '/css/style.css' not in content:
        content = content.replace('</head>', '  <link rel="stylesheet" href="/css/style.css">\n</head>')

    # Replace pass/fail messages
    message_regex = re.compile(r'\$\{pass\}\s*\$\{fail\s*\}')
    message_replacement = '<div class="messages"><div class="message success">${pass}</div><div class="message error">${fail}</div></div>'
    content = message_regex.sub(message_replacement, content)
    
    # Also some might just have ${pass} or ${fail} independently but they usually are together in this project.
    
    if content != original_content:
        with open(filepath, 'w', encoding='ISO-8859-1') as f:
            f.write(content)
        print(f"Updated: {filepath}")

for root, dirs, files in os.walk(directory):
    for file in files:
        if file.endswith('.jsp'):
            process_file(os.path.join(root, file))
