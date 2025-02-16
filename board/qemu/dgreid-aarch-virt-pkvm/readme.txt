
Copy the rootfs.ext2 to rootfs_guest.ext2 as both the aarch64 host and guest can use the same rootfs base.

Run the emulation with:

  qemu-system-aarch64 -kernel output/images/Image -nographic -machine virt,virtualization=on,gic-version=3 -cpu cortex-a72 -m 8G -smp 4 -append "console=ttyAMA0 earlycon=ttyAMA0 kvm-arm.mode=protected root=/dev/vda" -netdev user,id=eth0 -device virtio-net-device,netdev=eth0 -drive file=output/images/rootfs.ext4,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0 -fsdev local,security_model=none,multidevs=remap,id=fsdev-fsScratch,path=. -device virtio-9p-pci,id=fsScratch,fsdev=fsdev-fsScratch,mount_tag=fsScratch

The login prompt will appear in the terminal that started Qemu.

# mount the buildroot 9p share for rootfs and kernel for crosvm
mount_host_9p.sh

Then start crosvm to run a guest.
run_guest.sh
