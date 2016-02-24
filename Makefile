
SUBDIRS =  misc-progs misc-modules \
           skull scull scullc sculld scullp scullv sbull snull\
	   short shortprint pci simple usb tty lddbus

all: subdirs

subdirs:
	for n in $(SUBDIRS); do $(MAKE) -C $$n KERNELDIR=/lib/modules/2.6.32-38-generic/build || exit 1; done

clean:
	for n in $(SUBDIRS); do $(MAKE) -C $$n clean; done
