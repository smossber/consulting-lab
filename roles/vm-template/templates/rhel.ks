lang en_US
keyboard us
timezone Etc/UTC --isUtc
rootpw --iscrypted $5$8X4Q65bMSdDFfUHq$Nr3fI6pLnr6aAblmF3h.Fv7NIV0q3AKq5WlJsmT7YG9
reboot
text
bootloader --location=mbr --append="rhgb quiet crashkernel=auto"
repo --name="rhel7" --baseurl=http://10.15.0.1/repos/rhel-7-server-rpms
zerombr
clearpart --all --initlabel
autopart
auth --passalgo=sha512 --useshadow
selinux --enforcing
firewall --enabled --ssh
skipx
firstboot --disable
%packages
%end

