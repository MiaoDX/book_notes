pandoc -f markdown -t revealjs --self-contained VisualQA.md -o VisualQA.html -V theme=serif2 -V revealjs-url=H:/class_material/hand_in_homework/pandoc_markdown_revealjs/reveal.js -i
pandoc -f markdown -t revealjs --self-contained VisualQA_ALG.md -o VisualQA_ALG.html -V theme=serif2 -V revealjs-url=H:/class_material/hand_in_homework/pandoc_markdown_revealjs/reveal.js -i

# pandoc -f markdown -t revealjs --standalone --self-contained VisualQA.md -o VisualQA.html -V theme=serif2 -V revealjs-url=H:/class_material/hand_in_homework/pandoc_markdown_revealjs/reveal.js -i
# pandoc -f markdown -t revealjs --standalone VisualQA.md -o proposal.html -V theme=serif2 -V revealjs-url=pandoc_markdown_revealjs/reveal.js -i