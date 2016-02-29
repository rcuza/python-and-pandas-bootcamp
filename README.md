# Python and Panda Bootcamp

Class repo for https://github.com/suneel0101/python-and-pandas-bootcamp
course.


# Notes
If you use a guest that does not have VirtualBox guest additions
installed, like debian/jessie64, you may need to run the following once:

```
vagrant up; vagrant ssh -c 'sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions'; vagrant reload
```

I switch to ubuntu/trusty64 and this became unnecessary.
