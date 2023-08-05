all:
	$(shell ./build_slides.py)
	$(shell marp --html index.md)
